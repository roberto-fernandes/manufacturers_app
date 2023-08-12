import 'package:flutter/material.dart';

class DefaultErrorMessage extends StatelessWidget {
  const DefaultErrorMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Error, please try again latter'),
    );
  }
}
