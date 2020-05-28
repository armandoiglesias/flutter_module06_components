import 'package:flutter/material.dart';
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
          children: _crearListItems(snapShot.data),
        );
      },
    );
  }

  List<Widget> _crearListItems( List<dynamic> data ) {
    return data.map((x ){
      return Column(
        children: <Widget>[
          ListTile( 
            title: Text( x["texto"]),
            leading: Icon(Icons.battery_unknown, color: Colors.blue,),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){

            },
             ),
          Divider()
        ],
      );
    } ).toList();
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
