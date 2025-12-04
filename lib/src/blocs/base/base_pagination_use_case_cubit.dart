import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk/core_sdk.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'base_use_case_cubit.dart';

part 'base_pagination_use_case_state.dart';

abstract class BasePaginationUseCaseCubit<Params, Data>
    extends Cubit<BasePaginationUseCaseState<Params, Data>> {
  String tag;

  BasePaginationUseCaseCubit(super.initialState, {required this.tag});

  void updateParams(Params params, bool paramsValid, {bool clearData = true}) {
    emit(
      state.setNewParams(
        params: params,
        paramsValid: paramsValid,
        clearData: clearData,
      ),
    );
  }

  Future<void> refresh() async {
    if (state.phase == UseCasePhase.loading) return;
    emit(
      state.copyWithPagination(
        paginationStatus: state.paginationStatus.start(),
      ),
    );
    call();
  }

  Future<void> call() async {
    final correlationId = Logger.shared.getCorrelationId(tag);
    final next = state.paginationStatus.next();

    if (next.currentPage > next.totalPages) return;
    emit(state.copyWith(phase: UseCasePhase.loading));

    final result = await callUseCase(
      state.params,
      state.paginationStatus.nextPagination(),
      correlationId: correlationId,
    );
    result.fold(
      (failure) {
        emit(state.copyWith(phase: UseCasePhase.failure, failure: failure));
      },
      (data) {
        emit(
          state.addPageData(
            phase: UseCasePhase.success,
            dataList: data.data,
            paginationStatus: data.status,
          ),
        );
      },
    );
  }

  @protected
  Future<Either<FailureModel, PaginationListModel<Data>>> callUseCase(
    Params params,
    PaginationModel pagination, {
    required String correlationId,
  });

  void resetPhase() {
    emit(
      state.copyWith(
        phase: UseCasePhase.initial,
        paginationStatus: state.paginationStatus.start(),
      ),
    );
  }

  void setState(BasePaginationUseCaseState<Params, Data> newState) {
    emit(newState);
  }

  @override
  void emit(BasePaginationUseCaseState<Params, Data> state) {
    if (isClosed) {
      return;
    }
    super.emit(state);
  }
}
