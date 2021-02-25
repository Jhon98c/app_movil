import 'package:app_movil/Paginas_complementarias/complementPageBuscar/items.dart';
import 'package:app_movil/Paginas_complementarias/complementPageBuscar/pageResultadoBusqueda.dart';
import 'package:flutter/material.dart';

class dataDisplayBusque extends StatelessWidget {
  Future<List<Items>> fetchItems(BuildContext context) async {
    final jsonString =
        await DefaultAssetBundle.of(context).loadString('assets/data.json');
    return itemsFromJson(jsonString);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      /*backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Center(
          child: Text('Busqueda', textAlign: TextAlign.center),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
      ),*/
      //body: Container(
      child: FutureBuilder(
          future: fetchItems(context),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  Items item = snapshot.data[index];
                  return datesJobs(item: item);
                },
              );
            }
            return CircularProgressIndicator();
          }),
    );
    //);
  }
}

class datesJobs extends StatelessWidget {
  const datesJobs({
    Key key,
    @required this.item,
  }) : super(key: key);

  final Items item;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 450.0,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: InkWell(
            splashColor: Colors.lightBlue[200],
            onTap: () {
              /*
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => pageViewResulBusqueda(text, text1)));*/
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 260.0,
                        child: Text(
                          item.nombreProyecto,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                          //style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      Spacer(flex: 5),
                      ButtonBar(
                        buttonHeight: 10.0,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 30.0,
                              ),
                              onPressed: () {
                                print('agregado a favoritos');
                              }),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 380.0,
                    //height: 90.0,
                    child: Text(
                      item.descriProyecto,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(),
                      maxLines: 5,
                    ),
                  ),
                  Text('Lugar: ' + item.ubicacion),
                  Text('Habilidades: ' + item.habilidades),
                  Text('Remuneracion: ' + item.remuneracion),
                  Text('Fecha de Publicacion: ' + item.fecha),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/*
class buscarDate extends StatefulWidget {
  @override
  _pageViewResulBusquedaState createState() => _pageViewResulBusquedaState();
}

class _pageViewResulBusquedaState extends State<buscarDate> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Center(
          child: SizedBox(
            child: Text(
              'Buscar Empleo',
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
            cajaResultados(),
          ],
        ),
      ),
    );
  }
}
*/
