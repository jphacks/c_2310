import 'package:flutter/material.dart';

class FilledButtonBase extends StatelessWidget {
  const FilledButtonBase({
    required this.child,
    required this.onPressed,
    super.key,
    this.outsidePadding,
    this.insidePadding = const EdgeInsets.all(8),
    this.isWidly = false,
    this.height = 50,
  });

  final Widget child;
  final EdgeInsetsGeometry? outsidePadding;
  final EdgeInsetsGeometry insidePadding;
  final bool isWidly;
  final double height;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: outsidePadding,
      width: isWidly ? double.infinity : null,
      height: height,
      child: FilledButton(
        onPressed: onPressed,
        child: Padding(
          padding: insidePadding,
          child: child,
        ),
      ),
    );
  }
}
