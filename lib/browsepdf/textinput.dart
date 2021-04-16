import 'package:flutter/material.dart';
import 'package:pdfpulse/browsepdf/browsepdf.dart';
import 'package:pdfpulse/tts/tts.dart';
 class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _MyCustomFormState extends State<MyCustomForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();
  String value;
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('PDF PULSE',
        style: TextStyle(color: Colors.cyan[300]),
        ),
        elevation: 10,
        backgroundColor: Colors.black,
      ),
      body:
      Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  "images/splashbg.jpg"),
              fit: BoxFit.cover,
            ),
          )
      // Column(
      //   children:[
      // RaisedButton(  
      //             child: Text("PDF", style: TextStyle(fontSize: 20),),  
      //             onPressed: () {
      //                 Navigator.of(context).push(MaterialPageRoute(
      //                   builder: (context) => browsepdf(),
      //                 ));
      //             },  
      //             color: Colors.red,  
      //             textColor: Colors.yellow,  
      //             padding: EdgeInsets.all(8.0),  
      //             splashColor: Colors.grey,  
      //           ),
      //           Padding(
      //   padding: const EdgeInsets.all(16.0),
      //   child: TextFormField(
      //     decoration: InputDecoration(
      //     labelText: 'Enter text you want to convert'
      //     ),
      //     autofocus: false,
      //     onChanged: (text){
      //       value = text;
      //     },
      //   ),
      // ),
      // RaisedButton(
      //   child: Text("Convert", style: TextStyle(fontSize: 20),),
      //   onPressed: () {
      //           Navigator.of(context).push(MaterialPageRoute(
      //                   builder: (context) => tts(value : value),
      //                 ));
      //       },
      //     ),
      // ])
    ));
  }
}