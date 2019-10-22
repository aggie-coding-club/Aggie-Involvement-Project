import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Color aggiemaroon = const Color(0x500000);
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Form(
        key: _formKey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  text: "Aggie Orgs",
                  style: TextStyle(
                    color: aggiemaroon.withOpacity(1.0),
                    fontSize: 55,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              TextFormField(
                validator: (input){
                  if(input.isEmpty){
                    // ignore: missing_return
                    return "Please type an email";
                  }
                },
                onSaved: (input) => _email = input,
                decoration: InputDecoration(
                  labelText: "Email"
                ),
              ),
              TextFormField(
                validator: (input){
                  // ignore: missing_return
                  if(input.length < 6){
                    return "Please enter a password";
                  }
                },
                onSaved: (input) => _password = input,
                decoration: InputDecoration(
                    labelText: "Pasword"
                ),
                obscureText: true,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text("Sign in"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
