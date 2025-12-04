import 'package:clean_starter/src/utils/logger.dart';
import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk/core_sdk.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'base_use_case_state.dart';

abstract class BaseUseCaseCubit<Params, Data>
    extends Cubit<BaseUseCaseState<Params, Data>> {
  String tag;

  BaseUseCaseCubit(super.initialState, {required this.tag});

  BaseUseCaseState<Params, Data> empty();

  void updateParams(Params params, bool paramsValid) {
    emit(state.copyWith(params: params, paramsValid: paramsValid));
  }

  Future<void> call({Params? params}) async {
    final parameters = params ?? state.params;
    final correlationId = Logger.shared.getCorrelationId(tag);
    Logger.shared.log('in-call', correlationId: correlationId);
    emit(state.copyWith(phase: UseCasePhase.loading, params: parameters));
    final result = await callUseCase(parameters, correlationId: correlationId);
    result.fold(
      (failure) {
        log.d("{log}: failure from base use case: $failure");
        emit(state.copyWith(phase: UseCasePhase.failure, failure: failure));
      },
      (data) {
        log.d("{log}: success from base use case: $data");
        emit(state.copyWith(phase: UseCasePhase.success, data: data));
      },
    );
  }

  @protected
  Future<Either<FailureModel, Data>> callUseCase(
    Params params, {
    required String correlationId,
  });

  void resetPhase() {
    emit(state.copyWith(phase: UseCasePhase.initial));
  }

  void setState(BaseUseCaseState<Params, Data> newState) {
    emit(newState);
  }

  @override
  void emit(BaseUseCaseState<Params, Data> state) {
    if (isClosed) {
      return;
    }
    super.emit(state);
  }
}
