

import 'package:flutter/material.dart';
import 'package:untitled3/features/common/presentation/utils/size_config.dart';

class RetryWidget extends StatelessWidget {
  final VoidCallback onRetry;

  const RetryWidget({required this.onRetry, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(child: Text('Unable to load data')),
        const SizedBox(height: SizeConfig.innerSectionSpace),
        ElevatedButton(
          onPressed: onRetry,
          child: const Text('Retry'),
        ),
      ],
    );
  }
}
