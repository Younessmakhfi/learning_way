import 'package:flutter/material.dart';
import 'random_content.dart';
void main() {runApp(new Repport());}

class Repport extends StatelessWidget {
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
              width: 430,
              height: 245,
              child:Image.asset('assets/pics/kid4.png'),
            ),
            Container(
                margin: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Kid2
                    Container(
                      child: Text('Reports',style: TextStyle(
                        decoration: TextDecoration.underline,color: Colors.blue,
                      ),),

                    ),
                    //Kid1
                    Container(
                      child: Text('Details'),
                    ),

                  ],
                )
            ),

            Container(
              margin: const EdgeInsets.only(top : 20.0,left: 20, right: 20 ),
              color: Color(0xFFF2F2F2),
              width: 500,
              height: 200,

              child:
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      'No reports were generated so far \n More sessions are required to be conducted \n in order to generate reports',
textAlign: TextAlign.center,style: TextStyle(fontSize: 18),

                    ),
                  ],
                ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 50,
              width: 300,
              child:RaisedButton(
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Random()),
                  );
                },
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(26.0),
                ),
                child: const Text(
                    'Start a new session',
                    style: TextStyle(fontSize: 16,color: Colors.white,)
                ),
              ),
            ),
          ],),
      ),
    );
  }
}