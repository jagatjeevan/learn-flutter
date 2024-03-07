import 'package:flutter/material.dart';
import 'component/story_brain.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    home: const StoryPage(),
  ));
}

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  StoryBrain myStory = StoryBrain();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/destini/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        child: storyColumWidget(),
      ),
    );
  }

  buttonLayout(String buttonText, MaterialColor buttonColor) {
    if (buttonText == '') return Container();

    return TextButton(
      onPressed: () {
        if (buttonText == 'Restart') {
          myStory.restartStory();
        } else {
          myStory.getNextStory();
        }
        setState(() {});
      },
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(buttonColor),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          )),
      child: Text(
        buttonText,
        style: const TextStyle(color: Colors.white, fontSize: 25.0),
      ),
    );
  }

  Widget storyColumWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Center(
            child: Text(
              myStory.getStory().storyTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 26,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
        buttonLayout(myStory.getStory().choice1, Colors.red),
        const SizedBox(
          height: 15.0,
        ),
        buttonLayout(myStory.getStory().choice2, Colors.blue),
      ],
    );
  }
}
