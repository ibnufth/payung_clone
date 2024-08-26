import 'package:flutter/material.dart';

class FeatureContainer extends StatelessWidget {
  final List<Widget> children;
  const FeatureContainer({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Wrap(
        spacing: 5,
        children: children,
      ),
    );
  }
}
