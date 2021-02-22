import 'package:flutter/material.dart';

class pageViewFormu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    pageViewFormuArguments arguments =
        ModalRoute.of(context).settings.arguments;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Center(
          child: Text('Publicar Empleo/proyecto', textAlign: TextAlign.center),
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
          width: 380.0,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 15.0,
              ),
              Text('Nombre de su proyecto: ' + arguments.nombreProyect),
              SizedBox(
                height: 10.0,
              ),
              Text('La descripcion de su proyecto: ' +
                  arguments.descripcionProyect),
              SizedBox(
                height: 10.0,
              ),
              Text('Ubicacion: ' + arguments.ubicacionProyect),
              SizedBox(
                height: 10.0,
              ),
              Text('Las habilidades requeridas: ' +
                  arguments.habilidadesProyect),
              SizedBox(
                height: 10.0,
              ),
              Text('Remuneracion: ' + arguments.remuneracionProyect),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                      child: Text("Editar"),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  SizedBox(
                    width: 20.0,
                  ),
                  RaisedButton(
                      child: Text("Publicar"),
                      onPressed: () {
                        print("Publicando");
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class pageViewFormuArguments {
  String nombreProyect;
  String descripcionProyect;
  String ubicacionProyect;
  String habilidadesProyect;
  String remuneracionProyect;
  pageViewFormuArguments({
    this.nombreProyect,
    this.descripcionProyect,
    this.ubicacionProyect,
    this.habilidadesProyect,
    this.remuneracionProyect,
  });
}
