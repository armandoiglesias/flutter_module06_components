import 'package:flutter/material.dart';
import 'package:modulo06_component/src/pages/alert_page.dart';
import 'package:modulo06_component/src/routes/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: routes ,
      onGenerateRoute: (settings){
        print("ruta ${ settings.name }");

        return MaterialPageRoute(builder: (BuildContext context) => AlertPage());
      },
    );
  }
}