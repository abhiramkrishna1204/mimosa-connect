import 'package:app/utils/theme.dart';
import 'package:flutter/material.dart';

import './widgets/auth_button.dart';

class AuthPage extends StatelessWidget {
  static const routeName = '/auth';

  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MimosaTheme.feedBlue,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),

              Text(
                'Mimosa',
                style: Theme.of(context).textTheme.headlineSmall!.merge(
                    TextStyle(
                        color: MimosaTheme.white,
                        fontSize: MediaQuery.of(context).size.height * 0.05,
                        fontWeight: FontWeight.w700)),
                textAlign: TextAlign.center,
              ),
              const Spacer(),

              /// [ Sign In ] button.
              AuthButtons(
                title: 'Sign in with',
                backgroundColor: MimosaTheme.white,
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                  debugPrint('Get Started');

                  // debugPrint('User trying to sign in with Google');

                  // final provider = Provider.of<GoogleSignInProvider>(
                  //   context,
                  //   listen: false,
                  // );

                  // provider.googleLogin();
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),

              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
