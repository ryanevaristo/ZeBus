import 'package:buscola1/splashScreen/Splash2.dart';
import 'package:buscola1/splashScreen/splash.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/" : (context) => const SplashScreen(),
      "/segundo" : (context) => const Splash2(),
    },
  ));
}