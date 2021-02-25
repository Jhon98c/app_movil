import 'package:app_movil/Paginas_complementarias/complementPageBuscar/buscarInfo.dart';
import 'package:app_movil/Paginas_complementarias/complementPageBuscar/dataBusqueda.dart';
import 'package:app_movil/Paginas_complementarias/complementPageBuscar/buscarDate.dart';
import 'package:flutter/material.dart';
import 'package:app_movil/Paginas_complementarias/complementPageBuscar/data.dart';
import 'package:app_movil/Paginas_complementarias/complementPageBuscar/pageResultadoBusqueda.dart';
import 'package:flutter_svg/svg.dart';

class pageBuscar extends StatefulWidget {
  @override
  _pageBuscarState createState() => _pageBuscarState();
}

class _pageBuscarState extends State<pageBuscar> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Center(
          child: Text('Buscar', textAlign: TextAlign.center),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => buscarInfo()));
                /*showSearch(context: context, delegate: DataSearch());*/
              })
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 450.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 15.0),
              Text(
                'Busqueda por categoria',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(height: 15.0),
              Flexible(
                child: cajaBotones(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class cajaBotones extends StatelessWidget {
  const cajaBotones({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 4 / 3,
      children: <Widget>[
        presionar(
          child: SvgPicture.asset('assets/iconsvg/diseño-web.svg',
              /*color: Colors.blue,*/ width: 50,
              height: 50),
          text: 'Diseño web y software',
        ),
        presionar(
          child: SvgPicture.asset('assets/iconsvg/desarrollo-aplicaciones.svg',
              /*color: Colors.blue,*/ width: 50,
              height: 50),
          text: 'Desarrollo de aplicaciones web y moviles',
        ),
        presionar(
          child: SvgPicture.asset('assets/iconsvg/diseño-multimedia.svg',
              /*color: Colors.blue,*/ width: 50,
              height: 50),
          text: 'Diseño, Multimedia y arquitectura',
        ),
        presionar(
          child: SvgPicture.asset('assets/iconsvg/ingenieria-de-datos.svg',
              /*color: Colors.blue,*/ width: 50,
              height: 50),
          text: 'Ingenieria de datos y administracion',
        ),
        presionar(
          child: SvgPicture.asset('assets/iconsvg/marketing.svg',
              /*color: Colors.blue,*/ width: 50,
              height: 50),
          text: 'Ventas y marketing',
        ),
        presionar(
          child: SvgPicture.asset('assets/iconsvg/recursos-contables.svg',
              /*color: Colors.blue,*/ width: 50,
              height: 50),
          text: 'Recursos contables y legales',
        ),
        presionar(
          child: SvgPicture.asset('assets/iconsvg/negocios.svg',
              /*color: Colors.blue,*/ width: 50,
              height: 50),
          text: 'Negocioas y contabilidad',
        ),
        presionar(
          child: SvgPicture.asset('assets/iconsvg/fabricacion.svg',
              /*color: Colors.blue,*/ width: 50,
              height: 50),
          text: 'Procesamiento y fabricacion de productos',
        ),
        presionar(
          child: SvgPicture.asset('assets/iconsvg/informatica.svg',
              /*color: Colors.blue,*/ width: 50,
              height: 50),
          text: 'Telefonia movil e informatica',
        ),
        presionar(
          child: SvgPicture.asset('assets/iconsvg/idiomas.svg',
              /*color: Colors.blue,*/ width: 50,
              height: 50),
          text: 'Traduccion e idiomas',
        ),
        presionar(
          child: SvgPicture.asset('assets/iconsvg/servicio.svg',
              /*color: Colors.blue,*/ width: 50,
              height: 50),
          text: 'Trabajo y servicios locales',
        ),
        presionar(
          child: SvgPicture.asset('assets/iconsvg/telecomunicaciones.svg',
              /*color: Colors.blue,*/ width: 50,
              height: 50),
          text: 'Telecomunicaciones',
        ),
        presionar(
          child: SvgPicture.asset('assets/iconsvg/transporte.svg',
              /*color: Colors.blue,*/ width: 50,
              height: 50),
          text: 'Carga, envio y transporte',
        ),
        presionar(
          child: SvgPicture.asset('assets/iconsvg/otros.svg',
              /*color: Colors.blue,*/ width: 50,
              height: 50),
          text: 'Otros',
        ),
      ],
    );
  }
}

class presionar extends StatelessWidget {
  final Widget child;
  final String text;
  const presionar({
    Key key,
    @required this.child,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.red,
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => pageResultadoBus(text)));
        },
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              this.child,
              SizedBox(height: 10.0),
              Text(this.text, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
