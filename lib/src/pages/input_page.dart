import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPage createState() => _InputPage();
}

class _InputPage extends State<InputPage> {

  String _texto = "";
  String _email = "";
  String _fecha = "";

  TextEditingController _inputFieldDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Page"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 20.0
        ),
        children: <Widget>[
        _crearInput(),
        Divider(),
        _crearEmail(),
        Divider(),
        _crearPassWord(),
        Divider(),
        _crearFecha(context),
        Divider(),
        _crearPersona(),
        
      ],),
    );
  }

  Widget _crearInput() {
    return TextField(
      //autofocus: false,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text(_texto.length.toString()),
        hintText: "Ingrese Nombre",
        labelText: "Nombre",
        helperText: "Solo el nombre",
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle)


      ),
      onChanged: (value){
        setState(() {
          _texto = value; 
        });
      } ,
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text("Nombre es: $_texto"),
      subtitle: Text("Email es: $_email "),
    );
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        labelText: "Email",
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email)


      ),
      onChanged: (value){
        setState(() {
          _email = value; 
        });
      } ,
    );
  }

  _crearPassWord() {
    return TextField(
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        labelText: "Password",
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock_open)


      ),
      onChanged: (value){
        setState(() {
          //_email = value; 
        });
      } ,
    );
  }

  Widget _crearFecha(BuildContext context) {
    return TextField(
      controller: _inputFieldDateController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        labelText: "Fecha de Nacimiento",
        hintText: "Seleccione una fecha",
        suffixIcon: Icon(Icons.perm_contact_calendar),
        icon: Icon(Icons.calendar_today),
      ),
      
      onTap: (){
        FocusScope.of(context).requestFocus( new FocusNode() );
        _selectDate(context);
      },
      
    );
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now() ,
      firstDate: DateTime(2018),
      lastDate: DateTime(2025),
      locale: Locale('es', 'CL')

    );

    if (picked != null){
      setState(() {
       _fecha = picked.toString(); 
       _inputFieldDateController.text = _fecha;
      });
    }
  }
}
