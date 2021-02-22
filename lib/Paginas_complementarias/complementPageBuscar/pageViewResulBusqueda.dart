import 'package:flutter/material.dart';

class pageViewResulBusqueda extends StatefulWidget {
  String textResult;
  String textResult1;

  pageViewResulBusqueda(this.textResult, this.textResult1);

  @override
  _pageViewResulBusquedaState createState() => _pageViewResulBusquedaState();
}

class _pageViewResulBusquedaState extends State<pageViewResulBusqueda> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Center(
          child: SizedBox(
            child: Text(
              'Detalles del proyecto/busqueda',
              textAlign: TextAlign.left,
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(widget.textResult),
            SizedBox(
              height: 40.0,
            ),
            Text(widget.textResult1),
          ],
        ),
      ),
    );
  }
}
