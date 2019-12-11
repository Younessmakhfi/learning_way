import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'list.dart';
import 'package:flutter/widgets.dart';
import 'inscription.dart';

void main() {runApp(new Login());}
class Login extends StatefulWidget {
  @override
  _Login  createState() => new _Login();
}
class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {

    Widget loginSection = Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 100,bottom: 50),
                  height: 161,
                  width: 165,
                  decoration: new BoxDecoration(
                    image: DecorationImage(
                      image: new AssetImage('assets/pics/pic2.png'),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  width: 300,
                  child:TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 14,color: Colors.white),
                      hintText: "Username",
                      icon: Icon(Icons.person,color: Colors.white),
                      fillColor: Colors.white,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                //password
                Container(
                  margin: const EdgeInsets.only(bottom: 18),
                  width: 300,
                  child:TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 14,color: Colors.white),
                      hintText: "Password",
                      icon: Icon(Icons.lock,color: Colors.white),
                      fillColor: Colors.white,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 300,
                  margin: const EdgeInsets.only(bottom: 25),
                  child:RaisedButton(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(26.0),
                    ),
                    child: const Text(
                        'SIGN IN',
                        style: TextStyle(fontSize: 16,color: Color(0xFF0072E5),)
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget lastSection = Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(right:20),
            child: Text('New Membre?',style: TextStyle(color: Colors.white),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => Inscription()));
            },
              child: Text('SIGN UP',style: TextStyle(fontWeight: FontWeight.bold),)
          ),
        ],
      ),
    );
    return MaterialApp(
      title: 'flutter layout demo',
      home: Scaffold(
        body:Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [Color(int.parse("ff699AFF",radix: 16)),Color(int.parse("ffB891FF",radix: 16))],
                begin: const FractionalOffset(0.5, 0.0),
                end: const FractionalOffset(0.5, 0.5),
                stops: [0.6, 1.0]),
          ),
          child : Column(
            children: [loginSection,lastSection],
          ),
        ) ,
      ),
    );
  }
}