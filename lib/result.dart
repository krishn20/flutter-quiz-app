import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restartHandler;

  Result(this.resultScore, this.restartHandler);



  //***************************************************************//
  //******************* Getter for Result Phrase ******************//

  String get resultPhrase {
    String resultText;

    if (resultScore >= 25) {
      resultText = 'You are a Gem!!';
    } else if (resultScore < 25 && resultScore >= 19) {
      resultText = 'A solid Rock, you are!';
    } else if (resultScore < 19 && resultScore >= 13) {
      resultText = 'A nice Brick.';
    } else if (resultScore < 13 && resultScore >= 7) {
      resultText = 'A normal Stone...';
    } else {
      resultText = 'You\'re a Pebble :(';
    }

    return resultText;
  }



  //***************************************************************//
  //******************** Widgets Build ****************************//
  //***************************************************************//

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!!'),
            onPressed: restartHandler,
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
