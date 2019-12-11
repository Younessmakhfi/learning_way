import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'login.dart';

void main(){
  runApp(new MaterialApp(
    home: new Logo(),
  ));
}
class Logo extends StatefulWidget {
  @override
  _Logo  createState() => new _Logo ();
}

class _Logo extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 5,
          navigateAfterSeconds:  Login(),
        ),
        Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [Color(int.parse("ffD2D2D2", radix: 16)), Color(int.parse("ffD2D2D2", radix: 16))],
                begin: const FractionalOffset(0.5, 0.0),
                end: const FractionalOffset(0.5, 0.5),
                stops: [0.6, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: new Center(
              child: new Image.asset(
                "assets/pics/pic1.png",width: 300,height: 300,
              )),
        ),
      ],

    );
  }
}