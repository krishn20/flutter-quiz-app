import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String getanswer;

  Answer(this.selectHandler, this.getanswer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(getanswer),
        onPressed: selectHandler,
      ),
    );
  }
}
