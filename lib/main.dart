import "package:flutter/material.dart";
import 'package:loginwithpaulo/ui/login.dart';

void main()=> runApp(new MaterialApp(
  title: 'Login Form Tutorial',
  home: new LoginForm(),
  theme: new ThemeData(
    primaryColor: Colors.red
  ),
));