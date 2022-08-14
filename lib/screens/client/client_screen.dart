// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:desafio_maxima_tech/models/client_model.dart';
import 'package:desafio_maxima_tech/screens/client/first_card.dart';
import 'package:desafio_maxima_tech/screens/client/second_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ClientScreen extends StatefulWidget {
  const ClientScreen({Key? key}) : super(key: key);
  static const routeName = '/client';

  @override
  State<ClientScreen> createState() => _ClientScreenState();
}

class _ClientScreenState extends State<ClientScreen> {
  @override
  Widget build(BuildContext context) {
    Cliente json = ModalRoute.of(context)!.settings.arguments as Cliente;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text('Dados do Cliente'),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              firstCard(context, json),
              SizedBox(
                width: 400,
                height: 300,
                child: Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Contatos',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Divider(
                          height: 4,
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: SizedBox(
                            height: 200,
                            width: MediaQuery.of(context).size.height,
                            child: ListView.builder(
                              itemCount: json.contatos!.length,
                              itemBuilder: (context, index) => secondCard(json),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green.shade700,
                      elevation: 4,
                    ),
                    onPressed: () {
                      final now = DateTime.now();
                      final data = DateFormat.yMMMd().format(now);
                      final snackBar = SnackBar(
                        content: Text('$data - Status: ${json.status}'),
                        action: SnackBarAction(
                          label: 'Fechar',
                          onPressed: () {},
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: const Text('Verificar status do cliente'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
