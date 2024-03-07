import 'package:flutter/material.dart';

class MyRoundButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;

  const MyRoundButton({
    super.key,
    required this.child,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: const Color(0xFF4C4F5E),
      elevation: 6.0,
      shape: const CircleBorder(),
      onPressed: onPressed,
      child: child,
    );
  }
}
