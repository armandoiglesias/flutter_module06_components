import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes Temp"),
      ),
      body: ListView(
        children: _crearItemsCorto(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> list = List<Widget>();
    for (var item in opciones) {
      list..add(
        ListTile(
          title: Text(item) ,
        )
      )
      ..add(Divider());
    }
    // opciones.map(( x ){
    //   print(x);
    //   list.add(
    //     ListTile(
    //       title: Text(x) ,
    //     )
    //   );
    // });
    return list;
  }

  List<Widget> _crearItemsCorto(){
    var items = opciones.map(( item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text("Texto 2"),
            leading: Icon(Icons.account_balance)
            ,
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
              
            },
          ),
          Divider()
        ],
      );
    }).toList();

    return items;
  }


}
