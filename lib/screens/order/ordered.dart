import 'package:desafio_maxima_tech/models/ordered_model.dart';
import 'package:desafio_maxima_tech/repository/ordered_repository.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GiftScreen extends StatefulWidget {
  const GiftScreen({Key? key}) : super(key: key);
  static const routeName = '/gift';

  @override
  State<GiftScreen> createState() => _GiftScreenState();
}

class _GiftScreenState extends State<GiftScreen> {
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    setState(() {
      init();
      isLoading = true;
    });
  }

  List<Pedidos> pedidos = [];

  Future init() async {
    final repository = OrderedRepository();
    final json = await repository.fetchOrdered();
    setState(() {
      pedidos = json.pedidos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text('Hist. de pedidos'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: pedidos.isNotEmpty
            ? ListView.separated(
                separatorBuilder: (context, index) =>
                    const Divider(thickness: 2),
                itemCount: pedidos.length,
                itemBuilder: (context, index) {
                  List<DateTime> data = [];
                  List<String> formated = [];
                  for (var i = 0; i < pedidos.length; i++) {
                    data.add(DateTime.parse(pedidos[i].data.toString()));
                  }

                  for (var j = 0; j < data.length; j++) {
                    formated.add(DateFormat.Hm().format(data[j]));
                  }

                  //data.add(DateTime.parse(pedidos[index].data.toString()));
                  //formated.add(DateFormat.yMMMd().format(data[index]));
                  return ListTile(
                    leading: const CircleAvatar(),
                    title: RichText(
                      text: TextSpan(
                        text: 'Nº Ped. RCA/ERP:',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        children: [
                          TextSpan(
                            text:
                                '${pedidos[index].numeroPedRca} / ${pedidos[index].numeroPedErp}',
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: ' ${formated[index]}',
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        const Text(
                          'Cliente: ',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          '${pedidos[index].codigoCliente} - ${pedidos[index].nOMECLIENTE}'
                              .toUpperCase(),
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Spacer(),
                        Icon(Icons.cut),
                      ],
                    ),
                  );
                },
              )
            : const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
