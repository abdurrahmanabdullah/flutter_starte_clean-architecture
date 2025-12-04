import 'package:clean_starter/src/blocs/base/base_use_case_cubit.dart';
import 'package:clean_starter/src/blocs/device_status/device_status_cubit.dart';
import 'package:clean_starter/src/ui/default_imports.dart';
import 'package:clean_starter/src/ui/screens/home/bloc/refresh_paginated_posts_cubit.dart';
import 'package:clean_starter/src/ui/screens/home/components/post_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/profile/refresh_profile_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePortraitView();
  }
}

class HomePortraitView extends StatefulWidget {
  const HomePortraitView({super.key});

  @override
  State<HomePortraitView> createState() => _HomePortraitViewState();
}

class _HomePortraitViewState extends State<HomePortraitView> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    context.read<RefreshProfileCubit>().call();
    _scrollController = ScrollController()..addListener(_onScroll);
    context.read<RefreshPaginatedPostsCubit>().resetPhase();
    context.read<RefreshPaginatedPostsCubit>().call();
  }

  Future<void> reloadData() async {
    if (context.mounted &&
        context.read<RefreshPaginatedPostsCubit>().state.phase ==
            UseCasePhase.failure) {
      context.read<RefreshPaginatedPostsCubit>().resetPhase();
      context.read<RefreshPaginatedPostsCubit>().call();
    }
  }

  void _onScroll() {
    final cubit = context.read<RefreshPaginatedPostsCubit>();
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      if (cubit.state.phase != UseCasePhase.loading &&
          cubit.state.paginationStatus.hasNextPage) {
        cubit.call();
      }
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return HomeScaffold(
      body: BlocListener<DeviceStatusCubit, DeviceStatusState>(
        listener: (context, state) => reloadData(),
        listenWhen: (previous, current) =>
            previous.hasInternet != current.hasInternet && current.hasInternet,
        child:
            BlocBuilder<RefreshPaginatedPostsCubit, RefreshPaginatedPostsState>(
              builder: (context, state) {
                if (state.phase == UseCasePhase.loading && state.data.isEmpty) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 16.w,
                      horizontal: 16.w,
                    ),
                    child: ShimmerHelper.shimmerList(
                      itemCount: 4,
                      height: 180.w,
                    ),
                  );
                }

                if (state.data.isEmpty) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height / 1.5,
                    child: const Center(child: NoDataCard()),
                  );
                }

                return Padding(
                  padding: EdgeInsets.only(bottom: 15.w),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          controller: _scrollController,
                          padding: EdgeInsets.only(
                            left: 16.w,
                            right: 16.w,
                            bottom: 16.w,
                          ),
                          separatorBuilder: (context, index) => Gap(15.h),
                          itemCount: state.data.length,
                          itemBuilder: (_, index) =>
                              PostCard(post: state.data[index]),
                        ),
                      ),
                      if (state.phase == UseCasePhase.loading)
                        CircularProgressIndicator.adaptive(),
                    ],
                  ),
                );
              },
            ),
      ),
    );
  }
}
