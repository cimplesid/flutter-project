import 'package:flutter/material.dart';
import 'LOGIN.dart';

void main() => runApp(MaterialApp(home: awesomeapp(),));

class awesomeapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'awesomeapp',
    home: Login(),
    );
  }
}
