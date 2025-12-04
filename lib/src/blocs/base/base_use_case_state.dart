part of 'base_use_case_cubit.dart';

enum UseCasePhase { initial, loading, success, failure }

class BaseUseCaseState<Params, Data> {
  final UseCasePhase phase;
  final bool paramsValid;
  final Params params;
  final Data data;
  final FailureModel failure;

  BaseUseCaseState({
    required this.phase,
    required this.paramsValid,
    required this.params,
    required this.data,
    required this.failure,
  });

  BaseUseCaseState<Params, Data> copyWith({
    UseCasePhase? phase,
    Params? params,
    bool? paramsValid,
    Data? data,
    FailureModel? failure,
  }) {
    return BaseUseCaseState<Params, Data>(
      phase: phase ?? this.phase,
      params: params ?? this.params,
      paramsValid: paramsValid ?? this.paramsValid,
      data: data ?? this.data,
      failure: failure ?? this.failure,
    );
  }

  factory BaseUseCaseState.empty({
    required Params params,
    required Data data,
    bool? paramsValid,
  }) {
    return BaseUseCaseState<Params, Data>(
      phase: UseCasePhase.initial,
      params: params,
      paramsValid: paramsValid ?? false,
      data: data,
      failure: FailureModel.generic(),
    );
  }
}
