import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter_application_1/config/configs.dart';

class GenderComponent extends StatelessWidget {
  final String label;
  final IconData iconImage;

  const GenderComponent({
    super.key,
    required this.label,
    required this.iconImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.mars,
          size: 50.0,
          color: Colors.white,
        ),
        const SizedBox(
          height: 25.0,
        ),
        CardTextComp(label: label)
      ],
    );
  }
}

class CardTextComp extends StatelessWidget {
  const CardTextComp({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label.toUpperCase(),
      style: configCardTextStyle,
    );
  }
}
