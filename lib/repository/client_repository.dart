import 'dart:convert';

import 'package:desafio_maxima_tech/models/client_model.dart';
import 'package:http/http.dart' as http;

class ClientRepository {
  final url =
      "https://private-anon-6e4988e5f2-maximatech.apiary-mock.com/android/cliente";

  Future<ClienteModel> fetchClient() async {
    final response = await http.get(Uri.parse(url));
    final json = jsonDecode(response.body);
    final client = ClienteModel.fromJson(json);
    print(client.cliente!.nomeFantasia);
    return client;
  }
}
