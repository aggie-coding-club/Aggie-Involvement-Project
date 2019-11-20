import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'Home.dart';


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
          color: Color(0xff500000),
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
                  style: TextStyle(
                    color: Colors.white,
                    shadows: [Shadow()]
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Email"
                  ),
                ),
                TextFormField(
                  validator: (input){
                    // ignore: missing_return
                    if(input.length < 6){
                      return "Please enter a longer password";
                    }
                  },
                  style: TextStyle(
                      color: Colors.white
                  ),
                  onSaved: (input) => _password = input,
                  decoration: InputDecoration(
                      labelText: "Password",
                      filled: true,
                      fillColor: Colors.white
                  ),
                  obscureText: true,
                ),
                ButtonTheme(
                  minWidth: 200,
                  height: 40,
                    buttonColor: Colors.white,
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
                            color: Colors.white,
                            fontSize: 17
                          ),
                        ),
                    ),
                   ButtonTheme(
                    minWidth: 100,
                    height: 35,
                    buttonColor: Colors.white,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                      onPressed: () {},
                      child: RichText(
                          text: TextSpan(
                            text: "Sign Up",
                            style: TextStyle(
                              color: Colors.white,
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

  Future<void> signIn() async{
    final formState = _formKey.currentState;
    if(formState.validate()){
      formState.save();
      try{
        AuthResult result = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
        FirebaseUser user = result.user;
        Navigator.push(context, MaterialPageRoute(builder: (context) => Home(user: user)));
      }catch(e){
        print(e.message);
      }
    }
  }
}
