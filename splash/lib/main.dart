// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'assets/fb_icons.dart';
void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}
class MyCustomIcons {
  MyCustomIcons._();

  static const _kFontFam = 'MyCustomIcons';

// create icon based on tow files : Fonts&Assets/fonts
  static const IconData twitter = const IconData(0xf309, fontFamily: _kFontFam);
  static const IconData facebook = const IconData(0xf30c, fontFamily: _kFontFam);
  static const IconData gplus = const IconData(0xf30f, fontFamily: _kFontFam);
}
class MyApp extends StatefulWidget {
  @override
  _SplashScreen createState() => new _SplashScreen();
}
//Splash Screen
class _SplashScreen extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return new Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 5,
          navigateAfterSeconds:  LoginScreen(),
            styleTextUnderTheLoader: new TextStyle(),
            photoSize: 100.0,



        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("splachscreen.png"),
              fit: BoxFit.fitWidth
            ),
          ),
        ),
      ],

    );
  }
}
//Login Screen
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //login TextFields
    Widget loginSection = Container(
//color: Colors.orangeAccent,
      padding: const EdgeInsets.all(25),
      child: Row(

        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /*2*/
                // Logo Image with 131*105 px
                Container(
                  margin: const EdgeInsets.only(top: 30,bottom: 30),
                  height: 131,
                  width: 105,
                  decoration: new BoxDecoration(
                    image: DecorationImage(
                      image: new AssetImage(
                          'assets/logo.png'),
                      fit: BoxFit.fill,
                    ),
                    //shape: BoxShape.circle,
                  ),
                ),
                //username of the user
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child:TextField(
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),

                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.white),
                      hintText: "Username",
                      //add icon outside input field
                      icon: Icon(Icons.person,color: Colors.white),
                      fillColor: Colors.white,
                      //add icon to the beginning of text field
                      //prefixIcon: Icon(Icons.person),
                      //can also add icon to the end of the textfiled
                      //suffixIcon: Icon(Icons.remove_red_eye),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),

                ),
                //password
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child:TextField(
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),


                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.white),
                      hintText: "Password",
                      //add icon outside input field
                      icon: Icon(Icons.lock,color: Colors.white),
                      fillColor: Colors.white,
                      //add icon to the beginning of text field
                      //prefixIcon: Icon(Icons.person),
                      //can also add icon to the end of the textfiled
                      //suffixIcon: Icon(Icons.remove_red_eye),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),

                ),
                //sign in Button
                Container(
                  height: 55,
                  width: 288,

                  margin: const EdgeInsets.only(top: 20),
                  padding: const EdgeInsets.only(bottom: 8),
                  child:RaisedButton(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondRoute()),
                      );
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(26.0),
                      //side: BorderSide(color: Colors.red)
                    ),
                    child: const Text(
                        'SIGN IN',
                        style: TextStyle(fontSize: 16,color: Colors.blue,)
                    ),

                  ),

                ),
                //Login With Social Account
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child:Text(
                    'Login With Social Account',
                    style: TextStyle(color: Colors.white),
                  ),

                ),
              ],
            ),
          ),
          /*3*/

        ],
      ),
    );
    Widget socialMediaSection = Container(
      // color: Colors.orangeAccent,
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // call buildButtonColum Tree time and change the icon each time
          _buildButtonColumn(Colors.white, MyCustomIcons.facebook),
          _buildButtonColumn(Colors.white, MyCustomIcons.twitter),
          _buildButtonColumn(Colors.white, MyCustomIcons.gplus),
        ],
      ),
    );
    Widget lastSection = Container(
      margin: const EdgeInsets.only(top: 10),
      //  color: Colors.orangeAccent,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(right:20),
            child: Text('New Membre?',style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            //margin: const EdgeInsets.only(right:6),
            child: Text('SIGN UP',style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          // call buildButtonColum Tree time and change the icon each time

        ],
      ),
    );
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      //title: 'Welcome to Flutter',

      title: 'flutter layout demo',
      home: Scaffold(
        body:Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg.png"),
              fit: BoxFit.cover,
            ),
          ),

          child : Column(

            children: [loginSection,socialMediaSection,lastSection],
          ),
        ) ,

      ),
    );
  }
  // _buildButtonColumn every time called take tow parameters Icon Path And his Color
  Column _buildButtonColumn(Color color, IconData icon) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),

        ),
      ],
    );
  }
}
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  Navigator.pop(context);
                  // ...
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  Navigator.pop(context);
                  // ...
                },
              ),
            ],
          ),

        ),
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
