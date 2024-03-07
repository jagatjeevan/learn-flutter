import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../component/my_round_button.dart';
import '../component/gender_component.dart';
import '../component/card_comp.dart';
import '../config/configs.dart';

class AgeWeightComp extends StatelessWidget {
  final int cardNumber;
  final String cardLabel;
  final Function onUpdateValue;

  const AgeWeightComp({
    super.key,
    required this.cardNumber,
    this.cardLabel = '',
    required this.onUpdateValue,
  });

  @override
  Widget build(BuildContext context) {
    return CardComp(
      tapFunction: () {},
      kolor: const Color(0xff1d1e33),
      cardChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              cardNumber.toString(),
              style: configHeightWeightTextStyle,
            ),
          ),
          CardTextComp(
            label: cardLabel,
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyRoundButton(
                    child: const Icon(FontAwesomeIcons.minus),
                    onPressed: () {
                      onUpdateValue(cardNumber - 1);
                    },
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  MyRoundButton(
                    child: const Icon(
                      FontAwesomeIcons.plus,
                    ),
                    onPressed: () {
                      onUpdateValue(cardNumber + 1);
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
