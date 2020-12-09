import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int score = 0;
  static List<String> qs = [
    "Cyclones spin in a clockwise direction in the southern hemisphere",
    "Goldfish only have a memory of three seconds",
    "The capital of Libya is Benghazi",
    "Brazil is the only country in the Americas to have the official language of Portuguese",
    "The Channel Tunnel is the longest rail tunnel in the world",
    "Darth Vader famously says the line “Luke, I am your father” in The Empire Strikes Back",
    "Olivia Newton-John represented the UK in the Eurovision Song Contest in 1974, the year ABBA won with 'Waterloo' ",
    "Stephen Hawking declined a knighthood from the Queen",
    "The highest mountain in England is Ben Nevis",
    "Nicolas Cage and Michael Jackson both married the same woman"
  ];

  void updateQuestion(bool answer) {
    if (this.question[this.score] == answer) {
      this.scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
    } else {
      this.scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
    }
  }

  Map<int, bool> question = {
    0: true,
    1: false,
    2: false,
    3: true,
    4: false,
    5: false,
    6: true,
    7: true,
    8: false,
    9: true
  };

  List<Icon> scoreKeeper = [];

  String currentQuestion = qs[0];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                currentQuestion,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                if (score < 10) {
                  setState(() {
                    updateQuestion(true);
                    score = score + 1;
                    currentQuestion = qs[score];
                  });
                } else {
                  setState(() {
                    score = 0;
                    currentQuestion = qs[score];
                    scoreKeeper.clear();
                  });
                }
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                if (score < 10) {
                  setState(() {
                    updateQuestion(false);
                    score = score + 1;
                    currentQuestion = qs[score];
                  });
                } else {
                  setState(() {
                    score = 0;
                    currentQuestion = qs[score];
                    scoreKeeper.clear();
                  });
                }
              },
            ),
          ),
        ),
        //TODO: Add a Row here as your score keeper
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
