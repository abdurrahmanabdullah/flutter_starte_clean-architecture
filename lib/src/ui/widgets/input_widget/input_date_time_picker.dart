import 'package:clean_starter/l10n/l10n.dart';
import 'package:clean_starter/src/extensions/date_time_extension.dart';
import 'package:clean_starter/src/extensions/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class InputDateTimePicker extends StatefulWidget {
  const InputDateTimePicker({
    super.key,
    this.initialDate,
    this.onDateSelected,
    required this.hintText,
    this.dateOnly = false,
    this.startDate,
    this.endDate,
    this.validator,
  });

  final DateTime? initialDate;
  final void Function(DateTime? dateTime)? onDateSelected;
  final String hintText;
  final bool dateOnly;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? Function(String?)? validator;

  @override
  State<InputDateTimePicker> createState() => _InputDateTimePickerState();
}

class _InputDateTimePickerState extends State<InputDateTimePicker> {
  final TextEditingController controller = TextEditingController();
  final format = DateFormat("dd/MM/yyyy");

  bool hasData = false;
  DateTime? initialDate;

  @override
  void initState() {
    super.initState();
    initialDate = widget.initialDate;

    if (widget.initialDate.isValid) {
      controller.text = widget.dateOnly
          ? format.format(widget.initialDate!)
          : "${format.format(widget.initialDate!)} ${widget.initialDate!.toTime()}";
      hasData = true;
    }

    controller.addListener(() {
      if (mounted) {
        setState(() {
          hasData = controller.text.isNotEmpty;
        });
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  InputBorder get _normalBorder => OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.w),
    borderSide: BorderSide(
      color: context.appColorScheme.strokeLight,
      width: 1.w,
    ),
  );

  InputBorder get _filledBorder => OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.w),
    borderSide: BorderSide(
      color: context.appColorScheme.strokeLight,
      width: 1.w,
    ),
  );

  InputBorder get _errorBorder => OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.w),
    borderSide: BorderSide(
      color: context.appColorScheme.statusError,
      width: 1.w,
    ),
  );

  Future<void> _selectDate() async {
    if (!context.mounted) return;

    DateTime date = initialDate ?? DateTime.now();
    if (widget.startDate.isValid && date.isBefore(widget.startDate!)) {
      date = widget.startDate!;
    }

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: date,
      firstDate: widget.startDate ?? DateTime(2015, 8),
      lastDate: widget.endDate ?? DateTime(date.year + 1),
    );

    if (picked != null && context.mounted) {
      if (widget.dateOnly) {
        initialDate = picked;
        controller.text = format.format(picked);
        widget.onDateSelected?.call(picked);
      } else {
        if (mounted) {
          final time = await showTimePicker(
            context: context,
            initialTime: TimeOfDay.fromDateTime(initialDate ?? DateTime.now()),
          );
          if (time != null) {
            final selectedDateTime = DateTime(
              picked.year,
              picked.month,
              picked.day,
              time.hour,
              time.minute,
            );
            initialDate = selectedDateTime;
            controller.text =
                "${format.format(selectedDateTime)} ${selectedDateTime.toTime()}";
            widget.onDateSelected?.call(selectedDateTime);
          }
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        controller: controller,
        readOnly: true,
        onTap: _selectDate,
        validator:
            widget.validator ??
            (v) {
              if (v == null || v.isEmpty) return context.l10n.fieldEmpty;
              return null;
            },
        decoration: InputDecoration(
          hintText: widget.hintText,
          contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0),
          filled: true,
          border: _normalBorder,
          enabledBorder: hasData ? _filledBorder : _normalBorder,
          focusedBorder: _filledBorder,
          errorBorder: _errorBorder,
          focusedErrorBorder: _errorBorder,
          suffixIconConstraints: BoxConstraints(
            maxHeight: 40.h,
            maxWidth: 40.h,
          ),
        ),
        style: Theme.of(
          context,
        ).textTheme.labelMedium?.copyWith(fontSize: 14.sp),
        textAlignVertical: TextAlignVertical.center, // vertically center text
      ),
    );
  }
}
