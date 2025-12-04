import 'package:auto_size_text/auto_size_text.dart';
import 'package:clean_starter/src/ui/default_imports.dart';
import 'package:clean_starter/src/ui/widgets/streams/future_stream_builder.dart';
import 'package:core_sdk/core_sdk.dart';

class ProfilePortraitView extends StatefulWidget {
  const ProfilePortraitView({super.key});

  @override
  State<ProfilePortraitView> createState() => _ProfilePortraitViewState();
}

class _ProfilePortraitViewState extends State<ProfilePortraitView> {
  AutoSizeGroup keyGroup = AutoSizeGroup();
  AutoSizeGroup valueGroup = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
    return HomeScaffold(
      body: FutureModelStreamBuilder(
        futureStream: CoreSdk.shared
            .getUseCase<GetProfileStreamUseCase>()
            .call(),
        buildLoading: (_) => Padding(
          padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 16.w),
          child: ShimmerHelper.shimmerList(itemCount: 4, height: 180.w),
        ),
        buildEmpty: (_) => const Center(child: NoDataCard()),
        buildData: (context, data) => SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3.5,
                    height: MediaQuery.of(context).size.width / 3.5,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(data.image.toString()),
                      ),
                      border: Border.all(
                        width: 2,
                        color: context.appColorScheme.brandPrimary,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Gap(20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      AutoSizeText(
                        group: keyGroup,
                        "${context.l10n.userName}: ",
                        style: context.appTextTheme.titleT3.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      AutoSizeText(
                        group: valueGroup,
                        data.username.toString(),
                        style: context.appTextTheme.bodyP1,
                      ),
                    ],
                  ),
                ),
                Gap(20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      AutoSizeText(
                        group: keyGroup,
                        "${context.l10n.firstName}: ",
                        style: context.appTextTheme.titleT3,
                      ),
                      AutoSizeText(
                        group: valueGroup,
                        data.firstName.toString(),
                        style: context.appTextTheme.bodyP1,
                      ),
                    ],
                  ),
                ),
                Gap(20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      AutoSizeText(
                        group: keyGroup,
                        "${context.l10n.lastName}: ",
                        style: context.appTextTheme.titleT3.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      AutoSizeText(
                        group: valueGroup,
                        data.lastName.toString(),
                        style: context.appTextTheme.bodyP1,
                      ),
                    ],
                  ),
                ),
                Gap(20),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      AutoSizeText(
                        group: keyGroup,
                        "${context.l10n.email}: ",
                        style: context.appTextTheme.titleT3.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Flexible(
                        child: AutoSizeText(
                          group: valueGroup,
                          data.email.toString(),
                          style: context.appTextTheme.bodyP1,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(20),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      AutoSizeText(
                        group: keyGroup,
                        "${context.l10n.gender}: ",
                        style: context.appTextTheme.titleT3.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      AutoSizeText(
                        group: valueGroup,
                        data.gender.toString(),
                        style: context.appTextTheme.bodyP1,
                      ),
                    ],
                  ),
                ),
                Gap(20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
