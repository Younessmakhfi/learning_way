import 'package:flutter/material.dart';
import 'repport.dart';
void main() {runApp(new HomePage());}

class HomePage extends StatelessWidget {
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
                  // ...
                },
              ),
              ListTile(leading: Icon(Icons.language),
                title: Text('Language'),
                onTap: () {
                  Navigator.pop(context);
                  // ...
                },
              ),
              ListTile(leading: Icon(Icons.exit_to_app),
                title: Text('Log out'),
                onTap: () {
                  // Update the state of the app.


                  Navigator.pop(context);
                  // ...
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
        //children: [ Container( child: Column(
        child: Column(
          children: [
            // Page Title
            Container(
              margin: const EdgeInsets.only(top: 30,bottom: 30),
              child: Text('childrens List',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                          Container(
                            width: 80,
                            height: 80,
                            child:Image.asset('assets/pics/kid2.png',),
                          ),
                          Container(
                            child: Text('Sanae Ahmed'),
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
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => Repport()));
                            },
                            child: Container(
                              width: 80,
                              height: 80,
                              child:Image.asset('assets/pics/kid1.png',),
                            ),
                          ),
                          Container(
                            child: Text('Ali Ahmed'),
                          ),
                        ],
                      ),

                    ),

                  ],
                )
            ),
            Container(
                margin: const EdgeInsets.only(left: 73,top: 12 ,bottom: 20),
                child: Row(
                  children: [

                    //Add a Child
                    Container(
                      child:
                      //Image.asset('man.png'),
                      Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            child:Image.asset('assets/pics/add.png'),
                          ),
                          Container(
                            child: Text('Add Child'),
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