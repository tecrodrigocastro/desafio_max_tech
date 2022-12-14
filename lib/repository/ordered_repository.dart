import 'dart:convert';

import 'package:desafio_maxima_tech/models/ordered_model.dart';
import 'package:http/http.dart' as http;

class OrderedRepository {
  final url =
      "https://private-anon-dedcc65595-maximatech.apiary-mock.com/android/pedido";

  Future<OrderedModel> fetchOrdered() async {
    final response = await http.get(Uri.parse(url));
    final decode = utf8.decode(response.bodyBytes);
    final json = jsonDecode(decode);
    final order = OrderedModel.fromJson(json);
    return order;
  }
}
