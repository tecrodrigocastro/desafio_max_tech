// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'package:desafio_maxima_tech/models/client_model.dart';
import 'package:desafio_maxima_tech/repository/client_repository.dart';
import 'package:desafio_maxima_tech/screens/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _timer();
    setState(() {
      init();
    });
  }

  Cliente? cliente;

  Future init() async {
    final repository = ClientRepository();
    final json = await repository.fetchClient();
    setState(() {
      cliente = json.cliente;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.lightBlue.shade900,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Image(
              image: NetworkImage(
                'https://maximatech.com.br/wp-content/uploads/2019/04/logo-maximatech-e1554815418600-300x76.png',
              ),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  void _timer() {
    Timer(
      const Duration(seconds: 4),
      () {
        Navigator.of(context).pushNamedAndRemoveUntil(
          '/home',
          (route) => false,
          arguments: cliente,
        );
      },
    );
  }
}
