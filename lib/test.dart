// import 'package:flutter/material.dart';
// import 'package:flutter_login/flutter_login.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';
// import 'screens/dashboard_screen.dart';
// import 'screens/login_screen.dart';

// import 'package:flutter/material.dart';
// // login_screen.dart
// import 'package:flutter/material.dart';
// import 'package:flutter_login/flutter_login.dart';



// await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
// );
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Email and Password',
//       theme: ThemeData(
//         primarySwatch: Colors.deepPurple,
//         // ignore: deprecated_member_use
//         accentColor: Colors.indigo[900],
//         // ignore: deprecated_member_use
//         cursorColor: Colors.teal[900],
//         textTheme: const TextTheme(
//           headline3: TextStyle(
//             fontFamily: 'OpenSans',
//             fontSize: 45.0,
//             color: Colors.green,
//           ),
//           button: TextStyle(
//             fontFamily: 'OpenSans',
//           ),
//           subtitle1: TextStyle(fontFamily: 'NotoSans'),
//           bodyText2: TextStyle(fontFamily: 'NotoSans'),
//         ),
//       ),
//       home: LoginScreen(),
//     );
//   }
// }



// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   static const String _title = 'Sample App';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: Scaffold(
//         appBar: AppBar(title: const Text(_title)),
//         body: const MyStatefulWidget(),
//       ),
//     );
//   }
// }

// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);

//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   TextEditingController nameController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.all(10),
//         child: ListView(
//           children: <Widget>[
//             Container(
//                 alignment: Alignment.center,
//                 padding: const EdgeInsets.all(10),
//                 child: const Text(
//                   'Innovative Drive Corporation',
//                   style: TextStyle(
//                       color: Colors.blue,
//                       fontWeight: FontWeight.w500,
//                       fontSize: 30),
//                 )),
//             Container(
//               alignment: Alignment.center,
//               padding: const EdgeInsets.all(10),
//             ),
//             Container(
//               padding: const EdgeInsets.all(10),
//               child: TextField(
//                 controller: nameController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'User Name',
//                 ),
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
//               child: TextField(
//                 obscureText: true,
//                 controller: passwordController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Password',
//                 ),
//               ),
//             ),
//             TextButton(
//               onPressed: () {
//                 //forgot password screen
//               },
//               child: const Text(
//                 'Forgot Password',
//               ),
//             ),
//             Container(
//                 height: 50,
//                 padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
//                 child: ElevatedButton(
//                   child: const Text('Login'),
//                   onPressed: () {
//                     print(nameController.text);
//                     print(passwordController.text);
//                   },
//                 )),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 const Text('Does not have account?'),
//                 TextButton(
//                   child: const Text(
//                     'Sign up',
//                     style: TextStyle(fontSize: 20),
//                   ),
//                   onPressed: () {
//                     //signup screen
//                   },
//                 )
//               ],
//             ),
//           ],
//         ));
//   }
// }
