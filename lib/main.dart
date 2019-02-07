import 'package:flutter/material.dart';
import 'package:quiz_application/components/form.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quiz",
      home: Welcome(),
    );
  }
}

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.blue,
          ),
          title: Center(
              child: Text(
            "UJHUB",
            style: TextStyle(
                color: Colors.blue,
                fontFamily: 'RemachineScript',
                fontWeight: FontWeight.bold),
          )),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.info_outline),
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              color: Theme.of(context).primaryColor,
              onPressed: () {},
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            Image.asset(
              "assets/images/quiz.png",
              width: 200.0,
              height: 200.0,
            ),
            FormComponent()
          ],
        ));
  }
}
