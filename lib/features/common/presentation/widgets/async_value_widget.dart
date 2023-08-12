import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AsyncValueWidget<T> extends StatelessWidget {
  final AsyncValue<T> value;
  final Widget Function(T) data;
  final Widget? customError;
  final Widget? loading;

  AsyncValueWidget({
    required this.value,
    required this.data,
    this.customError,
    this.loading,
  }) :

        /// Deals with screen resizing
        super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    return value.when(
      data: data,
      error: (e, st) =>
          customError ??
          Center(
            child: _ErrorMessageWidget(
              (kDebugMode ? '$e $st' : 'Error'),
            ),
          ),
      loading: () => const CircularProgressIndicator.adaptive(),
    );
  }
}

class _ErrorMessageWidget extends StatelessWidget {
  const _ErrorMessageWidget(this.message);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Text(message);
  }
}
