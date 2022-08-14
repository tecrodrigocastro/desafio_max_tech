import 'package:desafio_maxima_tech/models/client_model.dart';
import 'package:desafio_maxima_tech/repository/client_repository.dart';
import 'package:desafio_maxima_tech/screens/client/client_screen.dart';
import 'package:desafio_maxima_tech/screens/gift/gift_screen.dart';
import 'package:desafio_maxima_tech/screens/home/home_screen.dart';
import 'package:desafio_maxima_tech/screens/report/sales_report_screen.dart';
import 'package:desafio_maxima_tech/screens/settings/settings_screen.dart';
import 'package:desafio_maxima_tech/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaxTech',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        ClientScreen.routeName: (_) => const ClientScreen(),
        GiftScreen.routeName: (_) => const GiftScreen(),
        SalesReport.routeName: (_) => const SalesReport(),
        SettingsScreen.routeName: (_) => const SettingsScreen(),
        HomePage.routeName: (_) => const HomePage(),
      },
    );
  }
}
