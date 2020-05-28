import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    //_cargarData();
  }

  Future<List<dynamic>> cargarData() async{
    rootBundle.loadString('data/file.json').then((data) {
      Map dataMap = json.decode(data);
      //print(dataMap["nombreApp"]);
      opciones = dataMap["rutas"];

    });
    return opciones;
  }

  // void _cargarData() {
  //   rootBundle.loadString('data/file.json').then((data) {
  //     Map dataMap = json.decode(data);
  //     //print(dataMap["nombreApp"]);
  //     opciones = dataMap["rutas"];

  //   });
  // }
}

final menuProvider = _MenuProvider();
