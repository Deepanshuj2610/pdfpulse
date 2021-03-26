//import 'dart:js';
//import 'dart:js';

import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:math';
import 'dart:async';
import 'package:pdf_text/pdf_text.dart';
import 'package:file_picker/file_picker.dart';
import 'package:app/tts/tts.dart';

class browsepdf extends StatefulWidget {
  @override
  _browsepdf createState() => _browsepdf();
}

class _browsepdf extends State {
  PDFDoc _pdfDoc;
  String _text = "";

  bool _buttonsEnabled = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('PDF Text Example'),
            centerTitle: true,
            elevation: 10.0,
            //backgroundColor: Colors.deepPurple[700],
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.deepPurple[900], Colors.indigo[300]],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: [
              FlatButton(onPressed: _pickPDFText, child: Stack(children: <Widget>[
                Image.asset('images/bm1.png'),
                Container(
                  child: Text("Pick PDF Document" , 
                    style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold, fontSize: 15.0),
                    textAlign: TextAlign.right,
                    softWrap: true,
                    maxLines: 2,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 80.0, horizontal: 15.0),
                ),
              ],),
              ),
              FlatButton(onPressed: _buttonsEnabled ? _readRandomPage : () {}, child: Stack(children: <Widget>[
                Image.asset('images/bm1.png'),
                Container(
                  child: Text("Read random page" , 
                    style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold, fontSize: 15.0),
                    textAlign: TextAlign.right,
                    softWrap: true,
                    maxLines: 2,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 80.0, horizontal: 15.0),
                ),
              ],),),],),
              Row(children: [
              FlatButton(onPressed: _buttonsEnabled ? _readWholeDoc : () {}, child: Stack(children: <Widget>[
                Image.asset('images/bm1.png'),
                Container(
                  child: Text("Read whole document" , 
                    style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold, fontSize: 15.0),
                    textAlign: TextAlign.right,
                    softWrap: true,
                    maxLines: 2,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 80.0, horizontal: 15.0),
                ),
              ],),
              ),
              FlatButton(onPressed: (){}, child: Stack(children: <Widget>[
                Image.asset('images/bm1.png'),
                Container(
                  child: Text("??????????" , 
                    style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold, fontSize: 15.0),
                    textAlign: TextAlign.right,
                    softWrap: true,
                    maxLines: 2,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 80.0, horizontal: 15.0),
                ),
              ],),),],),
              Padding(
                    child: Text(
                      _pdfDoc == null
                          ? "Pick a new PDF document and wait for it to load..."
                          : "PDF document loaded, ${_pdfDoc.length} pages\n",
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    padding: EdgeInsets.all(15),
                  ),
                  Padding(
                    child: Text(
                      _text == "" ? "" : "Text:",
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    padding: EdgeInsets.all(15),
                  ),
                  Text(_text),
                  
        ],),
    ),);
    }

  /// Picks a new PDF document from the device
  Future _pickPDFText() async {
    File file = await FilePicker.getFile();
    _pdfDoc = await PDFDoc.fromFile(file);
    setState(() {});
  }

  /// Reads a random page of the document
  Future _readRandomPage() async {
    if (_pdfDoc == null) {
      return;
    }
    setState(() {
      _buttonsEnabled = false;
    });

    String text =
        await _pdfDoc.pageAt(Random().nextInt(_pdfDoc.length) + 1).text;

    setState(() {
      _text = text;
      _buttonsEnabled = true;
    });
  }

  /// Reads the whole document
  Future _readWholeDoc() async {
    if (_pdfDoc == null) {
      return;
    }
    setState(() {
      _buttonsEnabled = false;
    });

    String text = await _pdfDoc.text;

    setState(() {
      _text = text;
      _buttonsEnabled = true;
    });
  }
}


// padding: EdgeInsets.all(10),
//               child: ListView(
//                 children: <Widget>[
//                   FlatButton(
//                     child: Text(
//                       "Pick PDF document",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     color: Colors.blueAccent,
//                     onPressed: _pickPDFText,
//                     padding: EdgeInsets.all(5),
//                   ),
//                   FlatButton(
//                     child: Text(
//                       "Read random page",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     color: Colors.blueAccent,
//                     onPressed: _buttonsEnabled ? _readRandomPage : () {},
//                     padding: EdgeInsets.all(5),
//                   ),
//                   FlatButton(
//                     child: Text(
//                       "Read whole document",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     color: Colors.blueAccent,
//                     onPressed: _buttonsEnabled ? _readWholeDoc : () {},
//                     padding: EdgeInsets.all(5),
//                   ),
//                   Padding(
//                     child: Text(
//                       _pdfDoc == null
//                           ? "Pick a new PDF document and wait for it to load..."
//                           : "PDF document loaded, ${_pdfDoc.length} pages\n",
//                       style: TextStyle(fontSize: 18),
//                       textAlign: TextAlign.center,
//                     ),
//                     padding: EdgeInsets.all(15),
//                   ),
//                   Padding(
//                     child: Text(
//                       _text == "" ? "" : "Text:",
//                       style: TextStyle(fontSize: 18),
//                       textAlign: TextAlign.center,
//                     ),
//                     padding: EdgeInsets.all(15),
//                   ),
//                   Text(_text),
                  
//                 ],
//               ),
//             ),