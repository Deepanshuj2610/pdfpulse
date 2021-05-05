import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pdfpulse/Screens/Welcome/components/background.dart';
import 'package:pdfpulse/screen/textinput/input.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginScreen();
}
class _LoginScreen extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// class _LoginScreen extends State {
//   bool _isLoggedIn = false;

//   GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

//   _login() async {
//     try {
//       await _googleSignIn.signIn();
//       setState(() {
//         _isLoggedIn = true;
//       });
//     } catch (err) {
//       print(err);
//     }
//   }

//   _logout() {
//     _googleSignIn.signOut();
//     setState(() {
//       _isLoggedIn = false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     //  if (_isLoggedIn == true){
//     //   Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
//     // }
//     // else {
//     return Container(
//         constraints: BoxConstraints.expand(),
//         decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage("images/loginbg.jpg"), fit: BoxFit.cover)),
//         child: _isLoggedIn
//             ? Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Image.network(
//                     _googleSignIn.currentUser.photoUrl,
//                     height: 50.0,
//                     width: 50.0,
//                   ),
//                   Text(_googleSignIn.currentUser.displayName),
//                   OutlineButton(
//                     child: Text("Logout"),
//                     onPressed: () {
//                       _logout();
//                     },
//                   )
//                 ],
//               )
//             : Center(
//                 child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Background(
//                     child: SingleChildScrollView(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[
//                           Text(
//                             "LOGIN",
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           SizedBox(height: size.height * 0.03),
//                           SvgPicture.asset(
//                             "assets/icons/login.svg",
//                             height: size.height * 0.35,
//                           ),
//                           SizedBox(height: size.height * 0.03),
//                           RoundedInputField(
//                             hintText: "Your Email",
//                             onChanged: (value) {},
//                           ),
//                           RoundedPasswordField(
//                             onChanged: (value) {},
//                           ),
//                           RoundedButton(
//                             text: "LOGIN",
//                             press: () {},
//                           ),
//                           SizedBox(height: size.height * 0.03),
//                           AlreadyHaveAnAccountCheck(
//                             press: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) {
//                                     return SignUpScreen();
//                                   },
//                                 ),
//                               );
//                             },
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   ButtonTheme(
//                       minWidth: 200.0,
//                       height: 50.0,
//                       child: RaisedButton(child: new Text('Submit'))),
//                   //       Container(
//                   // width: 300,
//                   // child: TextField(
//                   //       decoration: InputDecoration(
//                   //         border: OutlineInputBorder(),
//                   //         hintText: 'Enter Password Here',
//                   //       ),
//                   //       autofocus: false,
//                   //       obscureText: true,
//                   //     )),
//                   ButtonTheme(
//                     minWidth: 200.0,
//                     height: 50.0,
//                     child: RaisedButton.icon(
//                         shape: RoundedRectangleBorder(
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(10.0))),
//                         onPressed: () {
//                           _login();
//                         },
//                         icon: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: const <Widget>[
//                               Image(
//                                   image: AssetImage('images/glogo.png'),
//                                   width: 25,
//                                   height: 25,
//                                   fit: BoxFit.fill)
//                             ]),
//                         label: new Text('Login with google')),
//                   ),
//                 ],
//               )));
//   }
// }

// //  class SecondScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: MyCustomForm(),
// //     );
// //   }
// // }
// 



