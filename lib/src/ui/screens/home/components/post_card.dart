import 'package:clean_starter/src/ui/default_imports.dart';
import 'package:clean_starter/src/ui/widgets/title_value_widget.dart';
import 'package:core_sdk/core_sdk.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key, required this.post});

  final PaginatedPostsResponseModel post;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => (),
      child: DetailsCard(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: TitleValueWidget(
                    title: post.title.toString(),
                    value: post.body.toString(),
                    valueMaxLine: 10,
                  ),
                ),
                SizedBox(width: 4.w),
              ],
            ),
            Gap(16.h),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: TitleValueWidget(
                    title: context.l10n.likes,
                    value: post.reactions.likes.toString(),
                    alignment: CrossAxisAlignment.center,
                  ),
                ),
                SizedBox(width: 4.w),
                Expanded(
                  flex: 1,
                  child: TitleValueWidget(
                    title: context.l10n.dislikes,
                    value: post.reactions.dislikes.toString(),
                    alignment: CrossAxisAlignment.center,
                  ),
                ),
                SizedBox(width: 4.w),
                Expanded(
                  flex: 1,
                  child: TitleValueWidget(
                    title: context.l10n.views,
                    value: post.views.toString(),
                    alignment: CrossAxisAlignment.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
