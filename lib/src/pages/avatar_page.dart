import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
        actions: <Widget>[
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage("https://dam.menshealthlatam.com/wp-content/uploads/2018/11/STANLEE.jpg"),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text("AI"),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
            "https://www.cinemascomics.com/wp-content/uploads/2018/02/stan-lee-enfermedad.jpg"
          ),
          placeholder: AssetImage(
            "assets/original.gif"
          ), 
          fadeInDuration: Duration(milliseconds: 1000) ,
        ),
      ),
    ) ;
  }
}