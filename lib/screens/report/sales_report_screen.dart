import 'package:flutter/material.dart';

class SalesReport extends StatefulWidget {
  const SalesReport({Key? key}) : super(key: key);
  static const routeName = '/report';

  @override
  State<SalesReport> createState() => _SalesReportState();
}

class _SalesReportState extends State<SalesReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Relátorio de Vendas')),
    );
  }
}
