import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/screens/list_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  Future setLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("isLogin", true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
          width: MediaQuery.of(context).size.width * 0.85,
          child: ElevatedButton(
            onPressed: () {
              setLogin().then((_) {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ListScreen()));
              });
            },
            child: const Text('로그인 하세염'),
          ),
        ),
      ),
    );
  }
}
