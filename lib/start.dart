
import 'package:auto_orientation/auto_orientation.dart';
import 'package:flutter/material.dart';
import 'home.dart';


class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello to web view'),
      ),
      body: Center(
        child: Text('go to webview page',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.forward),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: ( context){
            return Home();
          }));
          AutoOrientation.fullAutoMode();
        },

      ),
    );
  }
}
