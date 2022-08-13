import 'package:desafio_maxima_tech/repository/client_repository.dart';
import 'package:desafio_maxima_tech/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

Future main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaxTech',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
