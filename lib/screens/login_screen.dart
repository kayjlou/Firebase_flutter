import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import '../utils/transition_route_observer.dart';
import '../utils/custom-route.dart';
import '../utils/fire_auth.dart';
import 'profile_screen.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

const users = {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
};

class LoginPage extends StatefulWidget {
  static const routeName = '/auth';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  Duration get loginTime => Duration(milliseconds: 2250);

  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();

    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => ProfilePage(
            user: user,
          ),
        ),
      );
    }

    return firebaseApp;
  }

  //Auth User Create
  Future<String?> _authUser(LoginData data) {
    debugPrint('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      // if (!users.containsKey(data.name)) {
      //   return 'User does not exist';
      // }
      // if (users[data.name] != data.password) {
      //   return 'Password does not match';
      // }
      // return null;
    });
  }

  Future<String?> _signupUser(SignupData data) {
    debugPrint('Signup Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      FireAuth.registerUsingEmailPassword(
          name: data.name ?? "",
          email: data.name ?? "",
          password: data.password ?? "");

      return "User signed up";
    });
  }

  // Future<String> _recoverPassword(String name) {
  //   debugPrint('Name: $name');
  //   return Future.delayed(loginTime).then((_) {
  //     if (!users.containsKey(name)) {
  //       return 'User not exists';
  //     }
  //     return null;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'Innovative Drive',
      logo: const AssetImage('assets/images/IDC.png'),
      onLogin: _authUser, //Check if users exists
      onSignup: _signupUser,
      // onSubmitAnimationCompleted: () {
      //   Navigator.of(context).pushReplacement(MaterialPageRoute(
      //     // builder: (context) => DashboardScreen(),
      //   ));
      // },
      onRecoverPassword: (data) => null,
    );
  }
}
