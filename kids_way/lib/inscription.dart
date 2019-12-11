import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';

void main() {runApp(new Inscription());}
class Inscription extends StatefulWidget {
  @override
  _Inscription  createState() => new _Inscription ();
}
class _Inscription extends State<Inscription> {
  @override
  Widget build(BuildContext context) {
    Widget loginSection = Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 3,bottom: 25),
                  child: Text('Kids Way',style: TextStyle(fontSize:30,color: Colors.white,fontWeight: FontWeight.w900),
                  ),
                ),
                _Column("Name"),
                _Column("Last name"),
                _Column("Date of birth"),
                _Column("Email"),
                _Column("Phone"),
                _Column("Country"),
                _Column("Adress"),
                _Column("City"),
                _Column1("Password"),
                _Column1("Confirm password"),
                Container(
                  height: 50,
                  width: 300,
                  margin: const EdgeInsets.only(top: 30,bottom: 25),
                  child:RaisedButton(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(26.0),
                    ),
                    child: const Text(
                        'SIGN UP',
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

    return MaterialApp(
      title: 'flutter layout demo',
      home: Scaffold(
        body:Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [Color(int.parse("ff699AFF",radix: 16)),Color(int.parse("ffB891FF",radix: 16))],
                begin: const FractionalOffset(0.5, 0.0),
                end: const FractionalOffset(0.5, 0.5),
                stops: [0.6, 1.0],
                tileMode: TileMode.clamp),
          ),
          child : Column(
            children: [loginSection],
          ),
        ) ,
      ),
    );
  }
}
Container _Column(String c) {
  return Container(
        padding: const EdgeInsets.only(bottom: 2),
        width: 300,
        child:TextField(
          decoration: InputDecoration(
            hintStyle: TextStyle(fontSize: 14,color: Colors.white),
            hintText: c,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
  );
}

Container _Column1(String c) {
  return Container(
    padding: const EdgeInsets.only(bottom: 2),
    width: 300,
    child:TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintStyle: TextStyle(fontSize: 14,color: Colors.white),
        hintText: c,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    ),
  );
}