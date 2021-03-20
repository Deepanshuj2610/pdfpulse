import 'package:app/login/login.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:app/browsepdf/textinput.dart';
import 'package:app/browsepdf/browsepdf.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
 
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder:
                                                          (context) => 
                                                          SecondScreen()
                                                         )
                                       )
         );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown[800],
      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        image: AssetImage('images/logo.png')),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                      ),
                    ],
                  ));
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: browsepdf(),
    );
  }
}
