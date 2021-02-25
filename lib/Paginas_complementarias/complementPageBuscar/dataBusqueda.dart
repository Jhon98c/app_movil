import 'dart:convert';
import 'package:app_movil/Paginas_complementarias/complementPageBuscar/buscarDate.dart';
import 'package:app_movil/Paginas_complementarias/complementPageBuscar/network.dart';
import 'package:flutter/material.dart';
import 'package:app_movil/Paginas_complementarias/complementPageBuscar/post.dart';
import 'package:app_movil/Paginas_complementarias/complementPageBuscar/items.dart';

class buscarDate extends StatefulWidget {
  @override
  _buscarDateState createState() => _buscarDateState();
}

class _buscarDateState extends State<buscarDate> {
  List<Post> _post = List<Post>();
  List<Post> _postDisplay = List<Post>();
  bool _isLoading = true;
  @override
  void initState() {
    // TODO: implement initState
    fetchPost().then((value) {
      setState(() {
        _isLoading = false;
        _post.addAll(value);
        _postDisplay = _post;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Buscar empleo'),
        /*title: Center(
          child: Text('Buscar', textAlign: TextAlign.center),
        ),*/
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          if (!_isLoading) {
            return index == 0 ? _searchBar() : _ListItem(index);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
        itemCount: _postDisplay.length,
      ),
    );
  }

  _searchBar() {
    return Padding(
        padding: EdgeInsets.all(8),
        child: TextField(
            decoration: InputDecoration(
              hintText: 'Buscar...',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
            ),
            onChanged: (text) {
              text = text.toLowerCase();
              setState(() {
                _postDisplay = _post.where((post) {
                  var postNombreProyect = post.nombreProyecto.toLowerCase();
                  return postNombreProyect.contains(text);
                }).toList();
              });
            }));
  }

  _ListItem(index) {
    return Card(
      child: Padding(
        padding: EdgeInsets.only(
          top: 32,
          bottom: 32,
          left: 16,
          right: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              _postDisplay[index].nombreProyecto,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              _postDisplay[index].descriProyecto,
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}

/*
class buscarDate extends StatelessWidget {
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
        child: FutureBuilder(
            future: fetchItems(context),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    Items item = snapshot.data[index];
                    return datesBusqueJobs(item: item);
                  },
                );
              }
              return CircularProgressIndicator();
            }),
      ),
    );
  }
}

class datesBusqueJobs extends StatelessWidget {
  const datesBusqueJobs({
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
                        width: 290.0,
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
*/
