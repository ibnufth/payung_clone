import 'package:flutter/material.dart';

class FeatureIcon extends StatelessWidget {
  final IconData icon;
  final Color? colorIcon;
  final String name;
  const FeatureIcon(
      {super.key, required this.icon, this.colorIcon, required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height: 90,
      child: Center(
        child: Column(
          children: [
            Icon(icon, size: 32, color: colorIcon),
            const SizedBox(height: 8),
            Text(
              name,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
