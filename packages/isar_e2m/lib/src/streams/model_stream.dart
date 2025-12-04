import 'dart:async';

import 'package:common_sdk/common_sdk.dart';

abstract class ModelStream<Model> extends Stream<Optional<Model>> {
  bool get initialDataSent;
}
