import 'package:flutter/material.dart';
import 'LOGIN.dart';
import 'list.dart';
import 'home.dart';

void main() => runApp(awesomeapp());

class awesomeapp extends StatelessWidget {
  //  final  routes = <String, WidgetBuilder> {
  //                       Login.tag: ( context) =>  Login(),
  //                      Homie.tag : ( context) =>  Homie()
  //                     };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'awesomeapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
    home: Login(),
    routes: <String, WidgetBuilder> {
    '/home': (BuildContext context) => new Homie(),
    '/login' : (BuildContext context) => new Login(),
    '/list' : (BuildContext context) => new Lists(),
    
  },
   // routes: routes,
    );
  }
}
