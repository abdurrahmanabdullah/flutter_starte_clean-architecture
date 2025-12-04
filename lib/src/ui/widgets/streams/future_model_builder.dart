import 'dart:developer';

import 'package:common_sdk/common_sdk.dart';
import 'package:flutter/material.dart';

class FutureModelBuilder<M> extends StatefulWidget {
  final Future<Optional<M>> futureModel;
  final Widget Function(BuildContext) buildLoading;
  final Widget Function(BuildContext) buildEmpty;
  final Widget Function(BuildContext, M) buildData;

  const FutureModelBuilder({
    super.key,
    required this.futureModel,
    required this.buildLoading,
    required this.buildEmpty,
    required this.buildData,
  });

  @override
  State<FutureModelBuilder<M>> createState() =>
      _FutureModelStreamBuilderState<M>();
}

class _FutureModelStreamBuilderState<M> extends State<FutureModelBuilder<M>> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: widget.futureModel,
      builder: (context, snapshot) {
        log('<<<>>> StreamBuilder ${snapshot.connectionState} ');
        if (snapshot.connectionState == ConnectionState.waiting) {
          return widget.buildLoading(context);
        }
        final dataOption = snapshot.data;
        if (dataOption == null || !dataOption.hasData) {
          return widget.buildEmpty(context);
        }
        return widget.buildData(context, dataOption.data);
      },
    );
  }
}
