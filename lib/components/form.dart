import 'package:flutter/material.dart';
import 'package:quiz_application/components/homePage.dart';

class FormComponent extends StatefulWidget {
  @override
  _FormComponentState createState() => _FormComponentState();
}

class _FormComponentState extends State<FormComponent> {
  final _formKey = GlobalKey<FormState>();
  String _email, _password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: Colors.black45,
                fontSize: 20.0,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                labelText: "Email",
              ),
              validator: (input) {
                if (input.isEmpty) {
                  return 'Email can not be empty';
                } else if (input.contains('@')) {
                  return 'Must be a valid email';
                } else {
                  return null;
                }
              },
              onSaved: (input) => _email = input,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: TextFormField(
              obscureText: true,
              style: TextStyle(
                color: Colors.black45,
                fontSize: 20.0,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                labelText: "Password",
              ),
              validator: (input) {
                if (input.isEmpty) {
                  return 'Email can not be empty';
                } else if (input.contains('@')) {
                  return 'Must be a valid email';
                } else {
                  return null;
                }
              },
              onSaved: (input) => _email = input,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Forgot your password?",
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 18.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/homePage");
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                width: 370.0,
                height: 60.0,
                child: Center(
                    child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                )),
              ),
            ),
          ),
          Divider(color: Colors.blue, height: 20.0),
          Padding(
            padding: EdgeInsets.only(top: 0.0),
            child: GestureDetector(
              onTap: () {
              },
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.indigo,
                          width: 2.0,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  width: 370.0,
                  height: 60.0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          "assets/images/facebook.png",
                          height: 30.0,
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text(
                          'Login with facebook',
                          style:
                              TextStyle(color: Colors.indigo, fontSize: 20.0),
                        )
                      ],
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
