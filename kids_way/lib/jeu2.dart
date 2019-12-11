import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(new Jeu2());

class Jeu2 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(routes: {
      "/": (_) => new WebviewScaffold(
        url: "https://cdn.htmlgames.com/SearchTheSands/index.html",
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(0.0),
            child: AppBar(
              automaticallyImplyLeading: false, // hides leading widget

            )
        ),
      )
    });
  }
}