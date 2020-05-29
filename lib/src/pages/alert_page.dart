import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alerts"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("show Alert"),
          color: Colors.blue,
          onPressed: () => _mostrarAlert(context),
          shape: StadiumBorder(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.arrow_back,
          color: Colors.red,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius:  BorderRadius.circular(20.0) ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("Es el contenido"),
                FlutterLogo(
                  size: 100.0,
                )
              ],
            ),
            title: Text("Titulo"),
            actions: <Widget>[
              FlatButton(
                onPressed: () => Navigator.of(context).pop() ,
                child: Text("Cancelar"),
              ),
              FlatButton(
                child: Text("Ok"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
}
