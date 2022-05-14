import 'dart:ui';

import 'package:chat_app/screens/home/home_screen.dart';
import 'package:chat_app/screens/login/login_bloc.dart';
import 'package:chat_app/utils/cutomWidgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  var bloc = LoginBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                Center(
                  child: CustomWidgets().customText(
                      text: "chattr.", fonstSize: 50, color: Color(0xff516091)),
                ),
                const SizedBox(height: 100),
                box(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget box(BuildContext context) {
    return Container(
      height: 330,
      width: MediaQuery.of(context).size.width - 32,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 50.0),
          child: Container(
            padding: const EdgeInsets.all(20.0),
            color: Colors.white.withOpacity(0.5),
            child: Column(
              children: [
                CustomWidgets().customText(
                    text: "Enter your",
                    fonstSize: 20,
                    color: const Color(0xff516091)),
                CustomWidgets().customText(
                    text: "mobile number",
                    fonstSize: 30,
                    color: const Color(0xff516091)),
                TextField(
                  controller: bloc.usernameController,
                ),
                TextField(
                  controller: bloc.passwordController,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (bloc.usernameController.text.isNotEmpty &&
                        bloc.passwordController.text.isNotEmpty) {
                      Navigator.pushAndRemoveUntil(context,
                          MaterialPageRoute(builder: (ctx) {
                        return HomeScreen();
                      }), (route) => false);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("You must enter username and password"),
                      ));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff516091),
                  ),
                  child: Container(
                    height: 50,
                    child: Center(
                      child: CustomWidgets().customText(
                        text: "Login",
                        fonstSize: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
