import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:isar_e2m/isar_m2e.dart';

class FutureModelStreamBuilder<M> extends StatefulWidget {
  final Future<ModelStream<M>> futureStream;
  final Widget Function(BuildContext) buildLoading;
  final Widget Function(BuildContext) buildEmpty;
  final Widget Function(BuildContext, M) buildData;

  const FutureModelStreamBuilder({
    super.key,
    required this.futureStream,
    required this.buildLoading,
    required this.buildEmpty,
    required this.buildData,
  });

  @override
  State<FutureModelStreamBuilder<M>> createState() =>
      _FutureModelStreamBuilderState<M>();
}

class _FutureModelStreamBuilderState<M>
    extends State<FutureModelStreamBuilder<M>> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: widget.futureStream,
      builder: (context, snapshot) {
        log('<<<>>> FutureBuilder ${snapshot.connectionState} ');
        if (snapshot.connectionState != ConnectionState.done) {
          return widget.buildLoading(context);
        }

        if (snapshot.data == null) {
          return widget.buildEmpty(context);
        }

        return StreamBuilder(
          stream: snapshot.data!,
          builder: (context, snapshot) {
            log('<<<>>> StreamBuilder ${snapshot.connectionState} ');
            if (snapshot.connectionState == ConnectionState.waiting) {
              return widget.buildLoading(context);
            }
            final dataOption = snapshot.data;
            if (dataOption == null || !dataOption.hasData) {
              return widget.buildEmpty(context);
            }
            if (dataOption.data is List) {
              if ((dataOption.data as List).isEmpty) {
                return widget.buildEmpty(context);
              }
            }
            return widget.buildData(context, dataOption.data);
          },
        );
      },
    );
  }
}
