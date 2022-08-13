import 'package:desafio_maxima_tech/models/menu_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeController {
  List<MenuModel> list() {
    final data = [
      {
        'title': 'Clientes',
        'icon': Icon(
          Icons.group,
          color: Colors.blue.shade900,
          size: 60,
        ),
      },
      {
        'title': 'Pedidos',
        'icon': Icon(
          Icons.request_page,
          color: Colors.blue.shade900,
          size: 60,
        ),
      },
      {
        'title': 'Resumo de Vendas',
        'icon': Icon(
          Icons.graphic_eq,
          color: Colors.blue.shade900,
          size: 60,
        ),
      },
      {
        'title': 'Ferramentas',
        'icon': Icon(
          Icons.settings,
          color: Colors.blue.shade900,
          size: 60,
        ),
      },
    ];

    return data.map<MenuModel>(MenuModel.fromJson).toList();
  }
}
