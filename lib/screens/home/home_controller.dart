import 'package:desafio_maxima_tech/models/client_model.dart';
import 'package:desafio_maxima_tech/models/menu_model.dart';
import 'package:desafio_maxima_tech/repository/client_repository.dart';
import 'package:flutter/material.dart';

class HomeController {
  final repository = ClientRepository();

  Future<ClienteModel> start() async {
    final a = await repository.fetchClient();
    return a;
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
        'screen': '/client',
      },
      {
        'title': 'Pedidos',
        'icon': Icon(
          Icons.request_page,
          color: Colors.blue.shade900,
          size: 60,
        ),
        'screen': '/gift',
      },
      {
        'title': 'Resumo de Vendas',
        'icon': Icon(
          Icons.graphic_eq,
          color: Colors.blue.shade900,
          size: 60,
        ),
        'screen': '/report',
      },
      {
        'title': 'Ferramentas',
        'icon': Icon(
          Icons.settings,
          color: Colors.blue.shade900,
          size: 60,
        ),
        'screen': '/settings',
      },
    ];

    return data.map<MenuModel>(MenuModel.fromJson).toList();
  }
}
