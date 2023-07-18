import 'package:appa/home_page.dart';
import 'package:flutter/material.dart';
import 'package:appa/auth.dart';

import 'package:appa/login.dart';

class Widgets extends StatefulWidget {
  const Widgets({Key? key});

  @override
  State<Widgets> createState() => _WidgetsState();
}

class _WidgetsState extends State<Widgets> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return homepage();
        } else {
          return Login();
        }
      },
    );
  }
}
