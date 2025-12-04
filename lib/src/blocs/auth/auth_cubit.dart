import 'dart:async';

import 'package:core_sdk/domain/domain_get_it.dart';
import 'package:core_sdk/domain/repositories/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<bool> {
  AuthRepository get _repo => DomainGetIt.shared.get();
  late final StreamSubscription _sub;

  AuthCubit() : super(false) {
    _sub = _repo.isLoggedIn().listen(emit);
  }

  @override
  Future<void> close() {
    _sub.cancel();
    return super.close();
  }
}
