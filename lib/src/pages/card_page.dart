import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards Page"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 10,
          ),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text("Titlo Card "),
            subtitle: Text("fdsfdflkdsfslkdfkjdslkfjslfdsjfdljsk"),
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text("Cancelar"),
                onPressed: () {},
              ),
              FlatButton(
                child: Text("Ok"),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final _card = Container(
      decoration: BoxDecoration(
        borderRadius:  BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black26,
          blurRadius: 10.0,
          spreadRadius: 2.0,
          offset: Offset(2.0, 10.0)
         )
        ]

      ) ,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages-na.ssl-images-amazon.com%2Fimages%2FI%2F91bxP9hh-nL.png&imgrefurl=https%3A%2F%2Fwww.amazon.es%2FBharat-Vora-Mountain-4K-Wallpaper%2Fdp%2FB07CM3N7NP&tbnid=q13987ovoupPaM&vet=10CAcQxiAoA2oXChMIyJCOr6zZ6QIVAAAAAB0AAAAAEAY..i&docid=oUCEHnBhkb7FgM&w=512&h=512&itg=1&q=landscape&safe=active&ved=0CAcQxiAoA2oXChMIyJCOr6zZ6QIVAAAAAB0AAAAAEAY'),
            placeholder: AssetImage("assets/original.gif"),
            fadeInDuration: Duration(milliseconds: 200),
            height: 250,
            fit: BoxFit.cover,
          ),

          // Image(

          //   image: NetworkImage(

          //     'https://lh3.googleusercontent.com/proxy/pNDzRvZa0L7TZ9EB0QZlqKJF1OE8CSb3yhtKmeqD9tdtmHMuBkKWGovxUD8tWQoIuL9IGqFS4HZgsbqCm7SqNKqGey4vmjJimYNPQuFN-2JbuOIRx0akjsEbKCQUmQU1JOo'

          //   ),

          // ),

          Container(padding: EdgeInsets.all(20), child: Text("Es un texto")),
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.red,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: _card,
      ),
    );
  }
}
