import 'package:flutter/material.dart';
import 'package:hitch_handler/providers/user_provider.dart';
import 'package:hitch_handler/screens/auth_home/auth_app.dart';
import 'package:hitch_handler/screens/user_home/user_app.dart';
import 'package:provider/provider.dart';

import 'package:hitch_handler/models/user.dart' as model;

class WidgetTree extends StatefulWidget {
  static String routeName = '/branch';
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    model.User user = Provider.of<UserProvider>(context).getUser;
    if (user.userType == "user") {
      return const AppScreen();
    } else {
      return const AuthAppScreen();
    }
  }
}
