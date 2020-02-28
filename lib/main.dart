import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

import './render_body.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
        fontFamily: "OpenSans",
        //primaryColor: Color.fromRGBO(43, 122, 120, 100),
        accentColor: Color.fromRGBO(43, 122, 120, 100),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.contain,
              height: 25,
              scale: 6,
            ),
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.contacts),
          onPressed: () {},
          iconSize: 30.0,
          color: Color.fromRGBO(43, 122, 120, 100),
          //padding: EdgeInsets.only(left: 30.0, right: 10.0),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.mail),
            onPressed: () {},
            iconSize: 30.0,
            color: Color.fromRGBO(43, 122, 120, 100),
            //padding: EdgeInsets.only(right: 30.0, left: 10.0),
          ),
        ],
      ),
      body: MediaQuery.of(context).size.width > 1000
          ? SingleChildScrollView(child: RenderBody())
          : Center(
              child: Card(
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(MediaQuery.of(context).size.height/50),
                    child: Image.asset("assets/images/collegeCoder.png",),
                  ),
                  Expanded(
                                      child: AutoSizeText(
                      "The mobile version is not quite there yet!",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(43, 122, 120, 100),
                      ),
                      // softWrap: true,
                      // overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            )),
    );
  }
}
