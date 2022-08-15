import 'dart:convert';

import 'package:desafio_maxima_tech/models/client_model.dart';
import 'package:http/http.dart' as http;

class ClientRepository {
  final url =
      "https://private-anon-6e4988e5f2-maximatech.apiary-mock.com/android/cliente";

  Future<ClienteModel> fetchClient() async {
    final response = await http.get(Uri.parse(url), headers: {
      'content-type': 'application/json',
    });

    final decode = utf8.decode(response.bodyBytes);
    print(decode);
    final json = jsonDecode(decode);
    final client = ClienteModel.fromJson(json);

    return client;
  }
}
