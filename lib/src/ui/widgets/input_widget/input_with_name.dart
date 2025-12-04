import 'package:auto_size_text/auto_size_text.dart';
import 'package:clean_starter/src/ui/default_imports.dart';

class InputWithName extends StatelessWidget {
  const InputWithName({super.key, required this.title, this.required = true});

  final String title;
  final bool required;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AutoSizeText(
              title,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: context.appTextTheme.subTitleS1.copyWith(
                color: context.appColorScheme.textSecondary,
              ),
            ),
            Visibility(
              visible: required,
              child: Text(
                " *",
                style: TextStyle(color: context.appColorScheme.statusError),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
