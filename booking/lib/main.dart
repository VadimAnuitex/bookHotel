import 'package:booking/pages/login/login_screen.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(MainApplication());
}

class MainApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}
