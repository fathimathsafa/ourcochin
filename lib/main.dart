import 'package:flutter/material.dart';
import 'package:ourcochin/presentation/registration_screen/controller/registration_screen_controller.dart';
import 'package:ourcochin/presentation/registration_screen/view/registration_screen.dart';
import 'package:ourcochin/presentation/splash_screen/view/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_)=>RegistrationSCreenController(),child: MyApp(),)
     );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegistrationScreen(),
    );
  }
}
