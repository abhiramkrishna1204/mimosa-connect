import 'dart:async';

import 'package:app/utils/theme.dart';
import 'package:flutter/material.dart';

import '../auth/login_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }

  /// [ route ] is used to route to the [ Splash Screen ] after the [ duration ].
  route() async {
    Navigator.pushReplacementNamed(context, AuthPage.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MimosaTheme.feedBlue,
      body: SafeArea(
        child: Center(
            child: Text('Mimosa',
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: MimosaTheme.white, fontWeight: FontWeight.w700))),
      ),
    );
  }
}
