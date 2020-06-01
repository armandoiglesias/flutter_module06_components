import 'dart:async';

import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  ScrollController _scrollController = ScrollController();
  bool _isLoading = false;
  List<int> _listaNumero = new List();
  int _ultimoItem = 0;

  Future _fetchData() async {
    _isLoading = true;
    setState(() {});

    final _duration = Duration(seconds: 2);
    Timer(_duration, respuestaHttp);
  }

  void respuestaHttp() {
    _isLoading = false;
    _scrollController.animateTo(
      _scrollController.position.pixels + 10,
      duration: Duration(milliseconds: 400),
      curve: Curves.fastOutSlowIn
    );
    _agregar10();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _scrollController.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _agregar10();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        // _agregar10();
        _fetchData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Page"),
      ),
      body: Stack(children: <Widget>[_crearLista(), _crearLoading()]),
    );
  }

  Widget _crearLoading() {
    return _isLoading
        ? Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[CircularProgressIndicator()],
              ),
              SizedBox(
                height: 15.0,
               )
            ],
          )
        : Container();
  }

  Future<Null> obtenerPagina1() async{
    final duration = Duration( seconds:  2 );
    Timer(duration, (){
      _listaNumero.clear();
      _ultimoItem++;
      _agregar10();
    });

    return Future.delayed(duration);
  }

  Widget _crearLista() {
    return RefreshIndicator(
      onRefresh:  obtenerPagina1 ,
          child: ListView.builder(
        controller: _scrollController,
        itemCount: _listaNumero.length,
        itemBuilder: (BuildContext context, int index) {
          final imagen = _listaNumero[index];
          return FadeInImage(
            image: NetworkImage("https://picsum.photos/500/300/?image=$imagen"),
            placeholder: AssetImage("assets/original.gif"),
          );
        },
      ),
    );
  }

  void _agregar10() {
    for (var i = 1; i < 10; i++) {
      _ultimoItem++;
      _listaNumero.add(_ultimoItem);
    }

    setState(() {});
  }
}
