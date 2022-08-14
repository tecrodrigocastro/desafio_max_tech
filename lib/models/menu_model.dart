// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class MenuModel {
  final String title;
  final Icon icon;
  final Widget screen;
  MenuModel({
    required this.title,
    required this.icon,
    required this.screen,
  });

  factory MenuModel.fromJson(Map json) => MenuModel(
        title: json['title'],
        icon: json['icon'],
        screen: json['screen'],
      );
}
