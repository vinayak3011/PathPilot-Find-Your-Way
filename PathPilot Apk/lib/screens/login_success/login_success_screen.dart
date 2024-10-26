import 'package:flutter/material.dart';
import 'package:pathpilot/screens/navbar.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";

  const LoginSuccessScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: const SizedBox(),
      //   //title: const Text("Login Success"),
      // ),
      body: Column(
        children: [
          const SizedBox(height: 26),
          const Spacer(),
          Image.asset(
            "assets/images/success-26.png",
            height: MediaQuery.of(context).size.height * 0.3, //40%
          ),
          const SizedBox(height: 16),
          const Text(
            "Login Success",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, InitScreen3.routeName);
              },
              child: const Text("Procesed"),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
