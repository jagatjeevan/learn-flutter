import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/card_comp.dart';

import '../config/configs.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            child: Text("Your Result", style: configHeightWeightTextStyle),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 10.0),
              child: CardComp(
                tapFunction: () {},
                kolor: configBaseCarColor,
                cardChild: Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "overweight".toUpperCase(),
                        style: const TextStyle(
                          color: Colors.green,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      const Text(
                        "26.7",
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      const Text(
                        "You have slightly higher body weight. Try more exercising. You could consult a dietician as well",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => {Navigator.pop(context)},
            child: Container(
              margin: const EdgeInsets.only(top: 15.0),
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 25.0),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.red,
              ),
              child: Center(
                child: Text(
                  "Re-calculate".toUpperCase(),
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// return GestureDetector(
//       onTap: () => Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => const BMIPage(),
//         ),
//       ),
//       child: const Text("Go to previous screen"),
//     );