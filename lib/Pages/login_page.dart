import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Colors aggiemaroon = const Colors;
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Form(
        key: _formKey,
        child: Container(
          color: Colors.redAccent[700],
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    text: "Aggie Orgs",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 255),
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
                ButtonTheme(
                  minWidth: 200,
                  height: 40,
                    buttonColor: Color(0xFFD6D6D6),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                      onPressed: () {},
                      child: Text("Sign In"),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RichText(
                        text: TextSpan(
                          text: "New here?",
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1.0),
                            fontSize: 17
                          ),
                        ),
                    ),
                   ButtonTheme(
                    minWidth: 100,
                    height: 35,
                    buttonColor: Color(0xFFFFFFFF),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                      onPressed: () {},
                      child: RichText(
                          text: TextSpan(
                            text: "Sign Up",
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 17,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                      ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
