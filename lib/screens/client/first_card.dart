import 'package:desafio_maxima_tech/models/client_model.dart';
import 'package:flutter/material.dart';

Widget firstCard(BuildContext context, Cliente json) {
  return SizedBox(
    height: 200,
    width: MediaQuery.of(context).size.width,
    child: Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Dados do cliente',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            const Divider(),
            RichText(
              text: TextSpan(
                text: json.codigo,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
                children: <TextSpan>[
                  const TextSpan(text: ' - '),
                  TextSpan(
                    text: json.razaoSocial!.toUpperCase(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Text(
              json.nomeFantasia!.toUpperCase(),
              style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            RichText(
              text: TextSpan(
                text: 'CPF: ',
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: json.cnpj!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            RichText(
              text: TextSpan(
                text: 'CNPJ: ',
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: json.cnpj!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            RichText(
              text: TextSpan(
                text: 'Ramo de atividade: ',
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: json.ramoAtividade,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            RichText(
              text: TextSpan(
                text: 'Endereço: ',
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: json.endereco,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
