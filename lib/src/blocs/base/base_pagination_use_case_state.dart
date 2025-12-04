part of 'base_pagination_use_case_cubit.dart';

class BasePaginationUseCaseState<Params, Data>
    implements BaseUseCaseState<Params, List<Data>> {
  @override
  final List<Data> data;
  @override
  final FailureModel failure;
  @override
  final Params params;
  @override
  final bool paramsValid;
  @override
  final UseCasePhase phase;
  final PaginationStatusModel paginationStatus;

  BasePaginationUseCaseState({
    required this.phase,
    required this.paramsValid,
    required this.params,
    required this.data,
    required this.failure,
    required this.paginationStatus,
  });

  BasePaginationUseCaseState<Params, Data> setNewParams({
    UseCasePhase? phase,
    Params? params,
    bool? paramsValid,
    PaginationStatusModel? paginationStatus,
    bool clearData = true,
  }) {
    final dataList = clearData ? <Data>[] : data;
    final paginationStatus = clearData
        ? PaginationStatusModel.empty()
        : this.paginationStatus;
    return BasePaginationUseCaseState<Params, Data>(
      phase: phase ?? this.phase,
      params: params ?? this.params,
      paramsValid: paramsValid ?? this.paramsValid,
      data: dataList,
      failure: failure,
      paginationStatus: paginationStatus,
    );
  }

  BasePaginationUseCaseState<Params, Data> addPageData({
    UseCasePhase? phase,
    required List<Data> dataList,
    required PaginationStatusModel paginationStatus,
  }) {
    final list = <Data>[];
    if (paginationStatus.currentPage != 0) {
      list.addAll(data);
    }
    list.addAll(dataList);

    return BasePaginationUseCaseState<Params, Data>(
      phase: phase ?? this.phase,
      params: params,
      paramsValid: paramsValid,
      data: list,
      failure: failure,
      paginationStatus: paginationStatus,
    );
  }

  factory BasePaginationUseCaseState.empty({
    required Params params,
    List<Data>? data,
    bool? paramsValid,
  }) {
    return BasePaginationUseCaseState<Params, Data>(
      phase: UseCasePhase.initial,
      params: params,
      paramsValid: paramsValid ?? false,
      data: data ?? [],
      failure: FailureModel.generic(),
      paginationStatus: PaginationStatusModel.empty(),
    );
  }

  @override
  BasePaginationUseCaseState<Params, Data> copyWith({
    UseCasePhase? phase,
    Params? params,
    bool? paramsValid,
    List<Data>? data,
    FailureModel? failure,
    PaginationStatusModel? paginationStatus,
  }) {
    return BasePaginationUseCaseState<Params, Data>(
      phase: phase ?? this.phase,
      params: params ?? this.params,
      paramsValid: paramsValid ?? this.paramsValid,
      data: data ?? this.data,
      failure: failure ?? this.failure,
      paginationStatus: paginationStatus ?? this.paginationStatus,
    );
  }

  BasePaginationUseCaseState<Params, Data> copyWithPagination({
    UseCasePhase? phase,
    Params? params,
    bool? paramsValid,
    List<Data>? data,
    FailureModel? failure,
    PaginationStatusModel? paginationStatus,
  }) {
    return BasePaginationUseCaseState<Params, Data>(
      phase: phase ?? this.phase,
      params: params ?? this.params,
      paramsValid: paramsValid ?? this.paramsValid,
      data: data ?? this.data,
      failure: failure ?? this.failure,
      paginationStatus: paginationStatus ?? this.paginationStatus,
    );
  }
}
