import 'package:flutter/material.dart';
import 'package:app_movil/Paginas_complementarias/complementPageBuscar/pageResultadoBusqueda.dart';
import 'package:app_movil/Paginas_complementarias/complementPagePublicar/pageFormulario.dart';

class pagePublicar extends StatefulWidget {
  @override
  _pagePublicarState createState() => _pagePublicarState();
}

class _pagePublicarState extends State<pagePublicar> {
  var child;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Center(
          child: Text('Publicar', textAlign: TextAlign.center),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: 400,
          /*decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue,
              width: 2,
            ),
          ),*/
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  '¿Esta buscando personal para su empresa o desea realizar un proyecto?',
                  style: TextStyle(fontSize: 18.0),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10.0,
                ),
                MaterialButton(
                  minWidth: 200.0,
                  height: 40.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.blue[900])),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => pageFormulario()));
                  },
                  color: Colors.blue[900],
                  child: Text('Publicar empleos',
                      style: TextStyle(color: Colors.white)),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: 385.0,
                  height: 1.3,
                  color: Colors.grey,
                ),
                SizedBox(height: 10.0),
                Flexible(
                  child: Container(
                    width: 450,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 15.0),
                        Text(
                          'Empleos/proyectos publicados',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        cajaResultados(),
                      ],
                    ),
                  ),
                ),
                /*Container(
                  width: 350,
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 15.0),
                      Text(
                        'Todos los Empleos recomendados',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22.0),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      cajaResultados(),
                    ],
                  ),
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
