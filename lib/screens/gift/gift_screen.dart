import 'package:flutter/material.dart';

class GiftScreen extends StatefulWidget {
  const GiftScreen({Key? key}) : super(key: key);
  static const routeName = '/gift';

  @override
  State<GiftScreen> createState() => _GiftScreenState();
}

class _GiftScreenState extends State<GiftScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pedidos'),
      ),
    );
  }
}
