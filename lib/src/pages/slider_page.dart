import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _blockSize = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider Page"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (valor) {
        if (_blockSize) {
          return null;
        }
        setState(() {
          _valorSlider = valor;
        });
      },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/the-batman-noventa-90-matt-reeves-1552916303.jpg"),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckBox() {
    // return Checkbox(

    //   onChanged: (value) {
    //   setState(() {
    //    _blockSize =  value;
    //   });
    //  }, value: _blockSize,

    // );

    return CheckboxListTile(
      title: Text("Bloquear Slider"),
      subtitle: Text("se inhabilitara el Slider"),
      onChanged: (value) {
        setState(() {
          _blockSize = value;
        });
      },
      value: _blockSize,
    );
  }

  _crearSwitch() {
    return SwitchListTile(
      title: Text("Bloquear Slider"),
      subtitle: Text("se inhabilitara el Slider"),
      onChanged: (value) {
        setState(() {
          _blockSize = value;
        });
      },
      value: _blockSize,
    );
  }
}
