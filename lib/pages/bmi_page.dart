import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter_application_1/pages/result.dart';

import '../component/weight_age_comp.dart';
import '../component/card_comp.dart';
import "../component/gender_component.dart";
import "../config/configs.dart";

class BMIPage extends StatefulWidget {
  const BMIPage({super.key});

  @override
  State<BMIPage> createState() => _BMIPageState();
}

class _BMIPageState extends State<BMIPage> {
  Color maleCardColor = configBaseCarColor;
  Color femaleCardColor = configBaseCarColor;
  double defaultHeightInCm = 180.0;
  int weightinkg = 65;
  int age = 21;
  ConfigGender? selectedGender;

  void updateSelectedGender(ConfigGender g) {
    setState(() {
      selectedGender = g;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
          style: TextStyle(fontSize: 24.0),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CardComp(
                    tapFunction: () {
                      updateSelectedGender(ConfigGender.male);
                    },
                    kolor: selectedGender == ConfigGender.male
                        ? configSelectedCarColor
                        : configBaseCarColor,
                    cardChild: const GenderComponent(
                      label: "Male",
                      iconImage: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: CardComp(
                    tapFunction: () {
                      updateSelectedGender(ConfigGender.female);
                    },
                    kolor: selectedGender == ConfigGender.female
                        ? configSelectedCarColor
                        : configBaseCarColor,
                    cardChild: const GenderComponent(
                      label: "Female",
                      iconImage: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CardComp(
              tapFunction: () {},
              kolor: const Color(0xff1d1e33),
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      defaultHeightInCm.toString(),
                      style: configHeightWeightTextStyle,
                    ),
                  ),
                  Slider(
                    value: defaultHeightInCm.round().toDouble(),
                    min: 120,
                    max: 220,
                    divisions: 100,
                    label: "",
                    onChanged: (double value) {
                      setState(() {
                        defaultHeightInCm = value.round().toDouble();
                      });
                    },
                  ),
                  const Center(
                    child: CardTextComp(
                      label: "Height in cm",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: AgeWeightComp(
                    cardNumber: weightinkg,
                    cardLabel: "Weight in KG",
                    onUpdateValue: (int value) {
                      setState(() {
                        weightinkg = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: AgeWeightComp(
                    cardNumber: age,
                    cardLabel: "Age",
                    onUpdateValue: (int value) {
                      setState(() {
                        age = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Result(),
                ),
              ),
            },
            child: Container(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 25.0),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.red,
              ),
              child: Center(
                child: Text(
                  "Check BMI".toUpperCase(),
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
