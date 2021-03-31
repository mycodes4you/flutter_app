import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
//flutter run -d chrome --web-renderer html

void main() => runApp(MiApp());
var titulo = "Widgets Separados (Login)";
class MiApp extends StatelessWidget {
  const MiApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: titulo,
      home: Inicio(),
    ) ;
  }
}


class Inicio extends StatefulWidget {
  Inicio({Key key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
          title: Text(titulo),
        ),*/
        body: fondoapp()
    );
  }
}

Widget fondoapp(){
  return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://imagenes.mycodes4you.com/albums/userpics/10001/normal_6dafa08555ee450d9d61061c7bc23cb5.jpg"),
              fit: BoxFit.cover
          )
      ),

      child: ListView(
        children: <Widget>[
          imagenPrincipal(),
          Container(
              child: Center(
                  child: Text("Bienvenido", style: TextStyle(color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold) )
              )
          ),
          txtUsuario(),
          txtPassword(),
          botonLogin(),

        ],
      )
  );
}

Widget imagenPrincipal(){
  return Column(
      children: <Widget>[
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: (200.0),
                height: (250.0),
                child: Center(
                  child: Image.network("https://autoshop-easy.com/img/logo.png"),
                ),
              ),
            ]
        ),
      ]
  );
}

Widget txtUsuario(){
  return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
          child: TextField(
              decoration: InputDecoration(
                hintText: "Ingresa tu nombre de Usuario",
                fillColor: Colors.white,
                filled: true,
              )
          ),
        ),
        SizedBox(height: 10,)
      ]
  );
}

Widget txtPassword(){
  return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
          child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Ingresa tu contrasena",
                fillColor: Colors.white,
                filled: true,

              )
          ),
        ),
        SizedBox(height: 10,)
      ]
  );
}

Widget botonLogin(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
          child: ElevatedButton(
              child: Row(
                  children: <Widget>[
                    Icon(Icons.login, size: 25.0,),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Entrar", style: TextStyle(fontSize: 25.0),),
                  ]
              ),
              onPressed: (){
                /*Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Principal())
                );*/

              }
          )
      )
    ],
  );
}
