import 'package:flutter/material.dart';
import 'package:ourcochin/presentation/bottom_navigation_screen/controller/bottom_navigation_screen_controller.dart';
import 'package:ourcochin/presentation/bottom_navigation_screen/view/bottom_navigation_screen.dart';
import 'package:ourcochin/presentation/registration_screen/controller/registration_screen_controller.dart';
import 'package:ourcochin/presentation/registration_screen/view/registration_screen.dart';
import 'package:ourcochin/presentation/splash_screen/view/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => RegistrationSCreenController()),
      ChangeNotifierProvider(create: (_)=> BottomNavigationScreenController())
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationScreen(),
    );
  }
}
