//JSON WEB

import 'dart:convert';
import 'package:app_movil/Paginas_complementarias/complementPageBuscar/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class buscarInfo extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<buscarInfo> {
  List<Posts> _list = [];
  List<Posts> _search = [];
  var loading = false;
  Future<Null> fetchData() async {
    setState(() {
      loading = true;
    });
    _list.clear();
    final response = await http
        .get("https://my-json-server.typicode.com/Jhon98c/json/empleos");
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        for (Map i in data) {
          _list.add(Posts.formJson(i));
          loading = false;
        }
      });
    }
  }

  TextEditingController controller = new TextEditingController();

  onSearch(String text) async {
    _search.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }

    _list.forEach((f) {
      if (f.nombreProyecto.contains(text) ||
          f.descriProyecto.toString().contains(text)) _search.add(f);
    });

    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Buscar Empleo', textAlign: TextAlign.center),
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
            SizedBox(height: 15.0),
            Center(
              child: Container(
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white),
                child: ListTile(
                  leading: Icon(
                    Icons.search,
                    color: Colors.blue[900],
                  ),
                  title: TextField(
                    style: TextStyle(color: Colors.blue[900]),
                    controller: controller,
                    onChanged: onSearch,
                    decoration: InputDecoration(
                      hintText: "Buscar",
                      border: InputBorder.none,
                    ),
                  ),
                  trailing: IconButton(
                    color: Colors.blue[900],
                    onPressed: () {
                      controller.clear();
                      onSearch('');
                    },
                    icon: Icon(Icons.cancel),
                  ),
                ),
                /*padding: EdgeInsets.all(10.0),
                color: Colors.blue,
                child: Card(),*/
              ),
            ),
            SizedBox(height: 10.0),
            loading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Expanded(
                    child: _search.length != 0 || controller.text.isNotEmpty
                        ? ListView.builder(
                            itemCount: _search.length,
                            itemBuilder: (context, i) {
                              final b = _search[i];
                              return buscarData(b: b);
                            },
                          )
                        : ListView.builder(
                            itemCount: _list.length,
                            itemBuilder: (context, i) {
                              final a = _list[i];
                              return leerData(a: a);
                            },
                          ),
                  ),
          ],
        ),
      ),
    );
  }
}

class leerData extends StatelessWidget {
  const leerData({
    Key key,
    @required this.a,
  }) : super(key: key);

  final Posts a;

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
                          a.nombreProyecto,
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
                      a.descriProyecto,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(),
                      maxLines: 5,
                    ),
                  ),
                  Text('Lugar: ' + a.Ubicacion),
                  Text('Habilidades: ' + a.Habilidades),
                  Text('Remuneracion: ' + a.remuneracion),
                  Text('Fecha de Publicacion: ' + a.Fecha),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class buscarData extends StatelessWidget {
  const buscarData({
    Key key,
    @required this.b,
  }) : super(key: key);

  final Posts b;

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
                          b.nombreProyecto,
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
                      b.descriProyecto,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(),
                      maxLines: 5,
                    ),
                  ),
                  Text('Lugar: ' + b.Ubicacion),
                  Text('Habilidades: ' + b.Habilidades),
                  Text('Remuneracion: ' + b.remuneracion),
                  Text('Fecha de Publicacion: ' + b.Fecha),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
