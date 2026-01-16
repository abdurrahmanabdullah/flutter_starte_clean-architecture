import 'package:clean_starter/src/blocs/note/create_note_cubit.dart';
import 'package:clean_starter/src/ui/default_imports.dart';
import 'package:core_sdk/domain/models/note/models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateNoteBottomSheet extends StatefulWidget {
  const CreateNoteBottomSheet({super.key});

  @override
  State<CreateNoteBottomSheet> createState() => _CreateNoteBottomSheetState();
}

class _CreateNoteBottomSheetState extends State<CreateNoteBottomSheet> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CreateNoteCubit(),
      child: Builder(
        builder: (context) {
          return BlocListener<CreateNoteCubit, NoteModel?>(
            listener: (context, state) {
              if (state != null) {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Note created successfully!'),
                    backgroundColor: Colors.green,
                  ),
                );
              }
            },
            child: Container(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                top: 16.w,
                bottom: MediaQuery.of(context).viewInsets.bottom + 16.w,
              ),
              decoration: BoxDecoration(
                color: context.appColorScheme.fillMain,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  topRight: Radius.circular(16.r),
                ),
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Create Note',
                          style: context.appTextTheme.titleT1.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () => Navigator.of(context).pop(),
                          icon: Icon(
                            Icons.close,
                            color: context.appColorScheme.textPrimary,
                          ),
                        ),
                      ],
                    ),
                    Gap(16.h),

                    // Title Input
                    TextFormField(
                      controller: _titleController,
                      decoration: InputDecoration(
                        labelText: 'Title',
                        hintText: 'Enter note title',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        filled: true,
                        fillColor: context.appColorScheme.baseWhite,
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please enter a title';
                        }
                        return null;
                      },
                    ),
                    Gap(16.h),

                    // Content Input
                    TextFormField(
                      controller: _contentController,
                      maxLines: 5,
                      decoration: InputDecoration(
                        labelText: 'Content',
                        hintText: 'Enter note content',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        filled: true,
                        fillColor: context.appColorScheme.baseWhite,
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please enter content';
                        }
                        return null;
                      },
                    ),
                    Gap(24.h),

                    // Create Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<CreateNoteCubit>().createNote(
                                  title: _titleController.text.trim(),
                                  content: _contentController.text.trim(),
                                );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: context.appColorScheme.brandPrimary,
                          foregroundColor: context.appColorScheme.baseWhite,
                          padding: EdgeInsets.symmetric(vertical: 16.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                        child: Text(
                          'Create Note',
                          style: context.appTextTheme.bodyP1.copyWith(
                            fontWeight: FontWeight.bold,
                            color: context.appColorScheme.baseWhite,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
