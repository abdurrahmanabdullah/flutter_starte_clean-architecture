import 'package:clean_starter/src/blocs/base/base_use_case_cubit.dart';
import 'package:clean_starter/src/ui/default_imports.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/refresh_notification_list_cubit.dart';
import 'component/notification_card.dart';

class NotificationPortraitView extends StatefulWidget {
  const NotificationPortraitView({super.key});

  @override
  State<NotificationPortraitView> createState() =>
      _NotificationPortraitViewState();
}

class _NotificationPortraitViewState extends State<NotificationPortraitView> {
  @override
  void initState() {
    super.initState();
    final cubit = context.read<RefreshNotificationListCubit>();
    cubit.call();
  }

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      title: context.l10n.notification,
      backgroundColor: context.appColorScheme.fillMain,
      body:
          BlocBuilder<
            RefreshNotificationListCubit,
            RefreshNotificationListState
          >(
            builder: (context, state) {
              if (state.phase == UseCasePhase.loading && state.data.isEmpty) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 16.w,
                    horizontal: 16.w,
                  ),
                  child: ShimmerHelper.shimmerList(itemCount: 10, height: 80.w),
                );
              }

              if (state.data.isEmpty) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height / 1.5,
                  child: const Center(child: NoDataCard()),
                );
              }

              if (state.data.isEmpty) {
                return const Center(child: NoDataCard());
              }

              return ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.data.length,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  final item = state.data[index];
                  return NotificationCard(data: item);
                },
              );
            },
          ),
    );
  }
}
