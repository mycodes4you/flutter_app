import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//flutter run -d chrome --web-renderer html

void main() => runApp(MiApp());
var titulo = "Widgets Separados";
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
          bvochido(),
          SizedBox(
            height: 50,
          ),
          imagenRick1(),
          imagenRick2(),
        ],
      )
  );
}

Widget bvochido(){
  return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: (200.0),
              height: (250.0),
              child: Center(
                child: Image.network("https://imagenes.mycodes4you.com/albums/userpics/10001/bvochido.jpeg"),
                ),
            ),
            Text("Bvochido", style: TextStyle(color: Colors.white, fontSize: 25.0))
          ]
        ),
        botonBvochido(),

      ]
  );
}
Widget botonBvochido(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
          child: ElevatedButton(
              child: Row(
                  children: <Widget>[
                    Icon(Icons.access_time_rounded, size: 25.0,),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Descargar", style: TextStyle(fontSize: 25.0),),
                  ]
              ),
              onPressed: (){
                var tiempo = DateTime.now();
                print("hola q ase... \n son las:");
                print(tiempo);

              }
          )
      )
    ],
  );
}

Widget imagenRick1(){
  return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          //width: (200.0),
          height: (100.0),
          child: Center(
            child: Image.network("https://imagenes.mycodes4you.com/albums/userpics/10001/EwOkADaXEAgjpfw.jpg"),
          ),
        ),
        Text("Tsuru JUCA", style: TextStyle(color: Colors.white, fontSize: 25.0))
      ]
  );
}

Widget imagenRick2(){
  return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("VochoMax", style: TextStyle(color: Colors.white, fontSize: 25.0)),
            Container(
              width: (200.0),
              height: (250.0),
              child: Center(
                child: Image.network("https://imagenes.mycodes4you.com/albums/userpics/10001/maxresdefault.jpg"),
              ),
            ),
          ]
        );
}
