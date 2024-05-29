import 'dart:async';

import 'package:flutter/material.dart';
import 'package:plants_care_uganda_ltd/auth/signIn.dart';

import '../utils/helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;
  @override
  void initState() {
    // TODO: implement initState
    _timer = Timer(const Duration(milliseconds: 6000), () {
      //navigate to next screen
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const SignIn();
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SizedBox(
          //controlling pixels and making them adaptive
          width: Helper.getScreenWidth(context),
          height: Helper.getScreenHeight(context),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/logo.png',
                  scale: 5,
                ),
              ),
            ],
          )),
    );
  }
}
