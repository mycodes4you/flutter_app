import 'package:flutter/material.dart';
import 'package:flutter_app/paginas/globales.dart' as globales;
import 'globales.dart';

class Principal extends StatelessWidget {
  const Principal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    globalWidth = MediaQuery.of(context).size.width as double;
    globalHeight = MediaQuery.of(context).size.height as double;
    return Scaffold(
      body: Column(
          children: [
            fondoapp()
          ],
      ),
    );
  }
}

Widget imagenPrincipal(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        width: (200.0),
        height: (250.0),
        child: Center(
          child: Image.network("https://autoshop-easy.com/img/logo.png"),
        ),
      ),
      terminos(),
    ]
  );
}

Widget fondoapp(){
  return Container(
    width: globales.globalWidth,
    height: globales.globalHeight,
    decoration: BoxDecoration(
      image: DecorationImage(
          image: NetworkImage("https://imagenes.mycodes4you.com/albums/userpics/10001/normal_6dafa08555ee450d9d61061c7bc23cb5.jpg"),
          fit: BoxFit.cover
      )
    ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          imagenPrincipal()
        ],
      )
  );
}

Widget terminos (){
  return Container(
    padding: EdgeInsets.only(left: 30, right: 30),
    child: Column(
      children: <Widget>[
        Text("Términos y condiciones",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
        SizedBox(height: 15,),
        Text("Para usar esa aplicación es necesario que aceptes los términos y condiciones. Para usar esa aplicación es necesario que aceptes los términos y condiciones.Para usar esa aplicación es necesario que aceptes los términos y condiciones.Para usar esa aplicación es necesario que aceptes los términos y condiciones. ",
          style: TextStyle(fontSize: 16, color: Colors.white), textAlign: TextAlign.justify,),
        SizedBox(height: 15,),
        Text("Para usar esa aplicación es necesario que aceptes los términos y condiciones. Para usar esa aplicación es necesario que aceptes los términos y condiciones.Para usar esa aplicación es necesario que aceptes los términos y condiciones.Para usar esa aplicación es necesario que aceptes los términos y condiciones. ", style: TextStyle(fontSize: 16, color: Colors.white), textAlign: TextAlign.justify,),
        SizedBox(height: 15,),
        Text("Para usar esa aplicación es necesario que aceptes los términos y condiciones. Para usar esa aplicación es necesario que aceptes los términos y condiciones.Para usar esa aplicación es necesario que aceptes los términos y condiciones.Para usar esa aplicación es necesario que aceptes los términos y condiciones. ", style: TextStyle(fontSize: 16, color: Colors.white), textAlign: TextAlign.justify,),
        SizedBox(height: 15,),
        ElevatedButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Acepto todo", style: TextStyle(fontSize: 20),),
              Icon(Icons.arrow_forward_ios)
              ],
            ),
            onPressed: ()=>{
              Navigator.pop(globales.contexto)
            }
        )


      ]
    )
  );
}