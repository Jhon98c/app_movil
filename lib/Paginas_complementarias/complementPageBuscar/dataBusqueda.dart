import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:app_movil/Paginas_complementarias/complementPageBuscar/items.dart';

/*
class dataDisplayBusque extends StatefulWidget {
  @override
  _JsonPageState createState() => _JsonPageState();
}

class _JsonPageState extends State<dataDisplayBusque> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("gaaaa"),
      ),
      
    );
  }
}
*/
class dataDisplayBusque extends StatelessWidget {
  Future<List<Items>> fetchItems(BuildContext context) async {
    final jsonString =
        await DefaultAssetBundle.of(context).loadString('assets/data.json');
    return itemsFromJson(jsonString);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
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
      ),
      body: Container(
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
      ),
    );
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
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.nombreProyecto,
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(item.descriProyecto),
                  Text(item.ubicacion),
                  Text(item.habilidades),
                  Text(item.remuneracion),
                  Text(item.fecha),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
