import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/paginas/globales.dart';
import 'package:flutter_app/paginas/principal.dart';
import 'package:flutter_app/paginas/globales.dart' as globales;
//flutter run -d chrome --web-renderer html

void main() => runApp(MiApp());
var titulo = "Widgets Separados (Login)";


class MiApp extends StatelessWidget {
  const MiApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_cast


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
    globalWidth = MediaQuery.of(context).size.width as double;
    globalHeight = MediaQuery.of(context).size.height as double;
    contexto = context as BuildContext;
    return Scaffold(
        /*appBar: AppBar(
          title: Text(titulo),
        ),*/
        body: ListView(
            children: <Widget>[
              fondoapp(),



            ]));
  }
}

Widget fondoapp(){
  return Container(
      width: globales.globalWidth,
      height: globales.globalHeight,

      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://imagenes.mycodes4you.com/albums/userpics/10001/normal_6dafa08555ee450d9d61061c7bc23cb5.jpg"),
              fit: BoxFit.cover
          )
      ),

      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          imagenPrincipal(),
          Container(
              child: Center(
                  child: Text("Bienvenido", style: TextStyle(color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold) )
              )
          ),
          txtUsuario(),
          txtPassword(),


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
                hintText: "User",
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
                hintText: "Password",
                fillColor: Colors.white,
                filled: true,

              )
          ),
        ),
        SizedBox(height: 10,),
        ConstrainedBox(
          constraints: BoxConstraints.tightFor(width: 150, height: 50),
          child: ElevatedButton(
              child: Row(
                  children: <Widget>[
                    Icon(Icons.login, size: 25.0,),
                    SizedBox(width: 5.0),
                    Text("Entrar", style: TextStyle(fontSize: 25.0),)
                  ]
              ),
              onPressed: (){
                Navigator.push(
                    globales.contexto,
                    MaterialPageRoute(builder: (context) => Principal())
                );
              }
          ),
        )
      ]
  );
}
