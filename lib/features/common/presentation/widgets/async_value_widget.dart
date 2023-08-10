import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AsyncValueWidget<T> extends StatelessWidget {
  final AsyncValue<T> value;
  final Widget Function(T) data;
  final String? customErrorMessage;
  final Widget? loading;

  AsyncValueWidget({
    required this.value,
    required this.data,
    this.customErrorMessage,
    this.loading,
  }) :
        /// Deals with screen resizing
        super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    return value.when(
      data: data,
      error: (e, st) => Center(
        child: _ErrorMessageWidget(
          customErrorMessage ?? (kDebugMode ? '$e' : 'Error'),
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
