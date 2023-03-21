import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import './auth/google_sign_in_provider.dart';

/// [ providers ] to provide the providers.
List<SingleChildWidget> providers = [
  /// [ GoogleSignInProvider ] to provide the Google sign in provider.
  ChangeNotifierProvider(create: (_) => GoogleSignInProvider()),
];
