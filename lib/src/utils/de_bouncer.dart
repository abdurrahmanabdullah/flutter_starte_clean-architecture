import 'dart:async';

import 'package:flutter/foundation.dart';

class DeBouncer {
  DeBouncer({required this.delay});

  final Duration delay;
  Timer? _timer;

  void run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(delay, action);
  }

  void cancel() {
    _timer?.cancel();
    _timer = null;
  }

  bool get isActive => _timer?.isActive ?? false;

  void dispose() => cancel();
}
