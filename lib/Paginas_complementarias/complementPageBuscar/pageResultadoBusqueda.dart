import 'package:flutter/material.dart';
import 'package:app_movil/Paginas_complementarias/complementPageBuscar/buscarDate.dart';

class pageResultadoBus extends StatefulWidget {
  String btnText;

  pageResultadoBus(this.btnText);

  @override
  _pageResultadoBusState createState() => _pageResultadoBusState();
}

class _pageResultadoBusState extends State<pageResultadoBus> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Center(
          child: SizedBox(
            child: Text(
              widget.btnText,
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
      backgroundColor: Colors.lightBlue[50],
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 450.0,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                cajaResultados(),
              ]
              //cajaResultados()],
              ),
        ),
      ),
    );
  }
}

class cajaResultados extends StatelessWidget {
  const cajaResultados({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: dataDisplayBusque(),
      /*child: ListView(
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          dataDisplayBusque(),
        ],
      ),*/
    );
  }
}
/*
class btnResultados extends StatelessWidget {
  final String text;
  final String text1;
  const btnResultados({
    Key key,
    this.text,
    this.text1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      /*shape: StadiumBorder(
        side: BorderSide(
          color: Colors.black,
          width: 2.0,
        ),
      ),*/
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        /*side: BorderSide(
          color: Colors.white,
          width: 10.0,
        ),*/
      ),
      child: InkWell(
        splashColor: Colors.lightBlue[200],
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => pageViewResulBusqueda(text, text1)));
        },
        child: Container(
          height: 200,
          decoration: BoxDecoration(
              border: Border.all(
                width: 10.0,
                color: Colors.white,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          /*decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.red[400],
                width: 1,
              ),
            ),
          ),*/
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  SizedBox(
                    width: 290.0,
                    child: Text(
                      this.text,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
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
                height: 10.0,
              ),
              SizedBox(
                width: 380.0,
                height: 90.0,
                child: Text(
                  this.text1,
                  style: TextStyle(),
                  maxLines: 6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
