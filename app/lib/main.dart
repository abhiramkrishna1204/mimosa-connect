import 'package:app/provider/providers.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './utils/theme.dart';
import './routes.dart';
import './firebase_options.dart';

Future<void> main() async {
  /// [ ensureInitialized ] is used to initialize the [ Shared Preferences ].
  WidgetsFlutterBinding.ensureInitialized();

  /// [ Firebase.initializeApp ] is used to initialize the [ Firebase ].
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Mimosa',

          /// [ Custom Theme ] for the app.
          theme: MimosaTheme.theme,

          /// [ Routes ] for the app.
          onGenerateRoute: MyRoutes.myRoutes),
    );
  }
}
