import 'package:auto_orientation/auto_orientation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back),
          onTap: (){
            Navigator.pop(context);
            AutoOrientation.portraitAutoMode();
          },
        ),

        title: Text('webView'),
      ),
      body: WebView(
        initialUrl: 'https://www.washingtonpost.com/?utm_source=google&utm_medium=acq-intl&utm_campaign=eng-evg&utm_content=INTL_Engagement_Global&utm_keyword=cnn%20live&campaignid=11451691128&adgroupid=121661492328&adid=490396251051&gclid=CjwKCAjw6fCCBhBNEiwAem5SO1o7lUjqDnjyFNH37jlRBmCAPAXTkcjdwg7VZws7iwOvdttaMf6pWhoC5yUQAvD_BwE&reload=true&_=1616732562142',
   javascriptMode: JavascriptMode.unrestricted,

      ),

    );
  }
}
