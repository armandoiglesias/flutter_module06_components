import 'package:flutter/material.dart';
import 'package:modulo06_component/src/Utils/icono_string_util.dart';
import 'package:modulo06_component/src/pages/alert_page.dart';
import 'package:modulo06_component/src/providers/menu.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: _lista(),
    );
  }

  _lista() {
    // menuProvider.cargarData().then((opciones){
    // });

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot snapShot) {
        return ListView(
          children: _crearListItems(snapShot.data, context),
        );
      },
    );
  }

  List<Widget> _crearListItems(List<dynamic> data, BuildContext context) {
    return data.map((x) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(x["texto"]),
            leading: getIcon(x["icon"]),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // final route = MaterialPageRoute(
              //   builder: (context)  {
              //     return  AlertPage();
              //   },
              // );
              // Navigator.push(context, route);

              Navigator.pushNamed(context, x["ruta"]);
            },
          ),
          Divider()
        ],
      );
    }).toList();
    // return [
    //   ListTile(
    //     title: Text("Hola Mundo"),
    //   ),
    //   Divider(),
    //   ListTile(
    //     title: Text("Hola Mundo"),
    //   ),
    //   Divider(),
    //   ListTile(
    //     title: Text("Hola Mundo"),
    //   ),
    //   Divider()
    // ];
  }
}
