import 'package:desafio_maxima_tech/models/client_model.dart';
import 'package:flutter/material.dart';

Widget secondCard(Cliente json) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            json.contatos![0].nome!.toUpperCase(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 5),
          RichText(
            text: TextSpan(
              text: 'Telefone: ',
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: json.contatos![0].telefone,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'Celular: ',
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
              children: [
                TextSpan(
                  text: json.contatos![0].celular,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'Cônjugue: ',
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: json.contatos![0].conjuge == ''
                      ? 'Não Informado'
                      : json.contatos![0].conjuge,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'Tipo: ',
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: json.contatos![0].tipo,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'Time: ',
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: json.contatos![0].time,
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
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 5),
          RichText(
            text: TextSpan(
              text: 'Email: \n',
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 13,
                overflow: TextOverflow.ellipsis,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: json.contatos![0].eMail,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 11,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'Celular: ',
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: json.contatos![0].celular,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'Cônjugue: ',
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: json.contatos![0].conjuge == ''
                      ? 'Não Informado'
                      : json.contatos![0].conjuge,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'Tipo: ',
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: json.contatos![0].tipo,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'Time: ',
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: json.contatos![0].time,
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
    ],
  );
}
