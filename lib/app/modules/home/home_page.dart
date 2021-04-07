import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mi_app/app/data/model/personaje.dart';
import 'package:mi_app/app/modules/home/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
          body: Column(
        children: [
          Expanded(
            child: _getListaPersonajes(_),
          ),
          // ElevatedButton(
          //     onPressed: () {
          //       _getListaPersonajes(_);
          //     },
          //     child: Text('Ver más'))
        ],
      )),
    );
  }

  void showNombre(String nombre) {
    Get.snackbar('Personaje', nombre);
  }

  Widget _getListaPersonajes(HomeController controller) {
    return FutureBuilder<List<Result>>(
      future: controller.getListaPersonajes(),
      builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.network('${snapshot.data[index].image}'),
                title: Text('${snapshot.data[index].name}'),
                subtitle: Text('${snapshot.data[index].status}'),
                onTap: () {
                  showNombre(snapshot.data[index].name);
                },
              );
            },
          );
        } else {
          return Container(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
