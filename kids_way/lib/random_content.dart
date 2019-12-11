import 'package:flutter/material.dart';
import 'jeu1.dart';
import 'jeu2.dart';
void main() {runApp(new Random());}

class Random extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        width: 230,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Column(
                  children: <Widget>[
                    Container(
                      width:100,
                      height: 100,
                      decoration: new BoxDecoration(
                        image: DecorationImage(
                          image: new AssetImage(
                              'assets/pics/man.png'),
                        ),
                        //shape: BoxShape.circle,
                      ),
                    ),
                    Text("Ahmed Ahmed"),Text("@id5657",style: TextStyle(fontSize: 12,color: Colors.black54),)

                  ],
                ),

              ),

              ListTile(leading: Icon(Icons.subscriptions),
                title: Text('Subscribe'),
                onTap: () {
                  Navigator.pop(context);
                  // ...
                },
              ),
              ListTile(leading: Icon(Icons.contacts),
                title: Text('List child'),
                onTap: () {
                  Navigator.pop(context);
                  // ...
                },
              ),
              ListTile(leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                  // ...
                },
              ),
              ListTile(leading: Icon(Icons.info),
                title: Text('About Us'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(leading: Icon(Icons.language),
                title: Text('Language'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(leading: Icon(Icons.exit_to_app),
                title: Text('Log out'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),

        ),
      ),

      appBar: AppBar(
        title: Text("Kids Way"),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Kid2
                    Container(
                      child:
                      //Image.asset('man.png'),
                      Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              width: 180,
                              height: 180,
                              child:Image.asset('assets/pics/Screen2.PNG',),
                            ),
                          ),
                        ],
                      ),

                    ),
                    //Kid1
                    Container(
                      child:
                      //Image.asset('man.png'),
                      Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              width: 180,
                              height: 180,
                              child:Image.asset('assets/pics/screen4.PNG',),
                            ),
                          ),
                        ],
                      ),

                    ),

                  ],
                )

            ),
            Container(
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Kid2
                    Container(
                      child:
                      //Image.asset('man.png'),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => Jeu1()));
                            },
                            child: Container(
                              width: 180,
                              height: 180,
                              child:Image.asset('assets/pics/game1.PNG',),
                            ),
                          ),
                        ],
                      ),

                    ),
                    //Kid1
                    Container(
                      child:
                      //Image.asset('man.png'),
                      Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              width: 180,
                              height: 180,
                              child:Image.asset('assets/pics/Screen2.PNG',),
                            ),
                          ),
                        ],
                      ),

                    ),

                  ],
                )

            ),
            Container(
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Kid2
                    Container(
                      child:
                      //Image.asset('man.png'),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => Jeu1()));
                            },
                            child: Container(
                              width: 180,
                              height: 180,
                              child:Image.asset('assets/pics/game2.PNG',),
                            ),
                          ),
                        ],
                      ),

                    ),
                    //Kid1
                    Container(
                      child:
                      //Image.asset('man.png'),
                      Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              width: 180,
                              height: 180,
                              child:Image.asset('assets/pics/Screen3.PNG',),
                            ),
                          ),
                        ],
                      ),

                    ),

                  ],
                )

            ),
          ],),
      ),
    );
  }
}