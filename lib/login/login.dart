
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
 
 class LoginScreen extends StatefulWidget {
   @override
  State<StatefulWidget> createState() {
    return _LoginScreen();
  }
 }
 class _LoginScreen extends State {
   bool _isLoggedIn = false;

  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  _login() async{
    try{
      await _googleSignIn.signIn();
      setState(() {
        _isLoggedIn = true;
      });
    } catch (err){
      print(err);
    }
  }

  _logout(){
    _googleSignIn.signOut();
    setState(() {
      _isLoggedIn = false;
    });
  }

   @override
   Widget build(BuildContext context) {
     return
       Container(
         constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/splashbg.jpg"),
                        fit: BoxFit.cover)),
         child: _isLoggedIn
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.network(_googleSignIn.currentUser.photoUrl, height: 50.0, width: 50.0,),
                      Text(_googleSignIn.currentUser.displayName),
                      OutlineButton( child: Text("Logout"), onPressed: (){
                        _logout();
                      },)
                    ],)
            : Center(
              child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        image: AssetImage('images/logo.png')),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                      ),
                      ButtonTheme(
                      minWidth: 200.0,
                      height: 50.0,
                     child: RaisedButton.icon(
                        
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                      onPressed: () {
                        _login();
                      },
                      icon : Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: const <Widget>[
      Image(
        image: AssetImage('images/glogo.png'),
         width: 25,
                                        height: 25,
                                        
                                        fit:BoxFit.fill),                       
        
  ]
                      ), 
                      label: new Text('Login with google')
                      ),
                      ),
                    ],
                    )
                  )
       );
   }
 }