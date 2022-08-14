import 'package:desafio_maxima_tech/models/client_model.dart';
import 'package:desafio_maxima_tech/models/menu_model.dart';
import 'package:desafio_maxima_tech/repository/client_repository.dart';
import 'package:desafio_maxima_tech/screens/home/home_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const routeName = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = HomeController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Cliente? json;
    json = ModalRoute.of(context)!.settings.arguments as Cliente;
    List<MenuModel> menu = homeController.list();

    double sizeW = MediaQuery.of(context).size.width;
    double sizeH = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: const Text('maxApp'),
      ),
      body: SizedBox(
        child: Padding(
          padding: EdgeInsets.only(top: sizeH * 0.1),
          child: SizedBox(
            child: Column(
              children: [
                SizedBox(
                  height: sizeW,
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: List.generate(
                      homeController.list().length,
                      (index) => InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            menu[index].screen,
                            arguments: json,
                          );
                        },
                        child: Card(
                          elevation: 3,
                          shadowColor: Colors.black,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                menu[index].icon,
                                const SizedBox(height: 10),
                                Text(menu[index].title),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'v.1.0.0',
                    ),
                    SizedBox(width: 5),
                    Icon(Icons.cloud_outlined),
                    Icon(Icons.cloud_off_outlined),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
