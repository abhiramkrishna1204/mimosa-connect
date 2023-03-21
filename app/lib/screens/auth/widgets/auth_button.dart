import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../utils/theme.dart';

class AuthButtons extends StatelessWidget {
  final String title;
  final Color? titleColor;
  final Function()? onPressed;
  final Color? backgroundColor;

  const AuthButtons({
    super.key,
    required this.title,
    this.onPressed,
    this.backgroundColor,
    this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.075,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor ?? MimosaTheme.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(color: titleColor),
                textAlign: TextAlign.center,
              ),
              Lottie.asset('assets/svg/google-logo.json',
                  height: MediaQuery.of(context).size.height),
            ],
          )),
    );
  }
}
