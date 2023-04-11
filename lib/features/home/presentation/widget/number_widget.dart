import 'package:flutter/material.dart';

class NumberWidget extends StatelessWidget {
  const NumberWidget({
    super.key,
    required this.number,
    this.onRandom,
    this.onAdd,
  });

  final Widget number;
  final VoidCallback? onRandom;
  final VoidCallback? onAdd;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        number,
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.shuffle_rounded),
              label: const Text('Random'),
              onPressed: onRandom?.call,
            ),
            const SizedBox(width: 16),
            OutlinedButton.icon(
              icon: const Icon(Icons.add_rounded),
              label: const Text('Add'),
              onPressed: onAdd?.call,
            ),
          ],
        ),
      ],
    );
  }
}

class NumberText extends StatelessWidget {
  const NumberText({
    super.key,
    required this.number,
  });

  final int number;

  @override
  Widget build(BuildContext context) {
    return Text(
      'The number is : $number',
      style: const TextStyle(fontSize: 32),
    );
  }
}
