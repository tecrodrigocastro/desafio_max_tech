import 'package:desafio_maxima_tech/models/client_model.dart';
import 'package:desafio_maxima_tech/models/menu_model.dart';
import 'package:desafio_maxima_tech/repository/client_repository.dart';
import 'package:desafio_maxima_tech/screens/client/client_screen.dart';
import 'package:desafio_maxima_tech/screens/gift/gift_screen.dart';
import 'package:desafio_maxima_tech/screens/home/home_screen.dart';
import 'package:desafio_maxima_tech/screens/report/sales_report_screen.dart';
import 'package:desafio_maxima_tech/screens/settings/settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeController {
  final repository = ClientRepository();
  //ClienteModel? model;
  Future start() async {
    await repository.fetchClient();
  }

  List<MenuModel> list() {
    final data = [
      {
        'title': 'Clientes',
        'icon': Icon(
          Icons.group,
          color: Colors.blue.shade900,
          size: 60,
        ),
        'screen': const ClientScreen(),
      },
      {
        'title': 'Pedidos',
        'icon': Icon(
          Icons.request_page,
          color: Colors.blue.shade900,
          size: 60,
        ),
        'screen': const GiftScreen(),
      },
      {
        'title': 'Resumo de Vendas',
        'icon': Icon(
          Icons.graphic_eq,
          color: Colors.blue.shade900,
          size: 60,
        ),
        'screen': const SalesReport(),
      },
      {
        'title': 'Ferramentas',
        'icon': Icon(
          Icons.settings,
          color: Colors.blue.shade900,
          size: 60,
        ),
        'screen': const SettingsScreen(),
      },
    ];

    return data.map<MenuModel>(MenuModel.fromJson).toList();
  }
}
