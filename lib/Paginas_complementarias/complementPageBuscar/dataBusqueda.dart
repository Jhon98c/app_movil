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
      appBar: AppBar(
        title: Text("gaaaa"),
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
                    return Text(
                      item.nombreProyecto,
                      style: TextStyle(fontSize: 20.0),
                    );
                  },
                );
              }
              return CircularProgressIndicator();
            }),
      ),
    );
  }
}
