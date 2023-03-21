import 'package:app/screens/home/home.dart';
import 'package:flutter/material.dart';

import 'screens/auth/login_screen.dart';
import 'screens/splash/intro_screen.dart';

class MyRoutes {
  static Route<dynamic> myRoutes(RouteSettings settings) {
    /// [ routeName ] is the name of the route and it will be [ switched ] according to the [ routes ].
    switch (settings.name) {
      /// [ Intro Screen ]
      case '/intro':
        return MaterialPageRoute(builder: (context) => const IntroScreen());

      /// [ Login Screen ]
      case '/auth':
        return MaterialPageRoute(builder: (context) => const AuthPage());

      /// [ Home Screen ]
      case '/home':
        return MaterialPageRoute(builder: (context) => const Home());
    }

    /// [ If no route is found ] then return a [ MaterialPageRoute ] with a [ Intro Screen ] as the [ builder ].
    return MaterialPageRoute(
      builder: (context) => const IntroScreen(),
    );
  }
}
