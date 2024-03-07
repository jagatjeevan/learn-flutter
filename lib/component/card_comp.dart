import 'package:flutter/material.dart';

class CardComp extends StatelessWidget {
  final Color kolor;
  final Widget cardChild;
  final Function tapFunction;

  const CardComp({
    super.key,
    required this.kolor,
    required this.cardChild,
    required this.tapFunction,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        tapFunction();
      },
      child: Container(
        margin: const EdgeInsets.all(7.0),
        decoration: BoxDecoration(
          color: kolor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardChild,
      ),
    );
  }
}
