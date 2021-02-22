import 'package:flutter/material.dart';
import 'package:app_movil/Paginas_complementarias/complementPagePublicar/pageViewForm.dart';
import 'package:flutter_tags/flutter_tags.dart';

class pageFormulario extends StatefulWidget {
  @override
  _pageFormState createState() => _pageFormState();
}

class _pageFormState extends State<pageFormulario> {
  String nombreProyect;
  String descripcionProyect;
  String ubicacionProyect;
  String habilidadesProyect;
  String remuneracionProyect;
  String dropval = 'puno';
  List text = new List();
  void dropChange(String val) {
    setState(() {
      dropval = val;
    });
  }

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Center(
          child:
              Text('Publicar un proyecto/empleo', textAlign: TextAlign.center),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Container(
              width: 350.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.lightBlue[50],
                  width: 15,
                ),
              ),
              child: Form(
                key: formKey,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'Ingrese datos para publicar',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.blue[900]),
                      decoration: InputDecoration(
                        labelText: 'Nombre del proyecto',
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white),
                          borderRadius: new BorderRadius.circular(25.7),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white),
                          borderRadius: new BorderRadius.circular(25.7),
                        ),
                      ),
                      onSaved: (value) {
                        nombreProyect = value;
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.blue[900]),
                      maxLength: 500,
                      buildCounter: (
                        BuildContext context, {
                        int currentLength,
                        int maxLength,
                        bool isFocused,
                      }) {
                        return Text('${maxLength - currentLength}');
                      },
                      decoration: InputDecoration(
                        labelText: 'Descripcion de proyecto',
                        hintText: 'Inserte descripcion',
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white),
                          borderRadius: new BorderRadius.circular(25.7),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white),
                          borderRadius: new BorderRadius.circular(25.7),
                        ),
                      ),
                      maxLines: 5,
                      onSaved: (value) {
                        nombreProyect = value;
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      width: 170,
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                          labelText: 'Ubicacion',
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.white),
                            borderRadius: new BorderRadius.circular(25.7),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: new BorderSide(color: Colors.white),
                            borderRadius: new BorderRadius.circular(25.7),
                          ),
                        ),
                        onChanged: dropChange,
                        isExpanded: true,
                        items: <String>['Puno', 'Juliaca', 'cusco']
                            .map<DropdownMenuItem<String>>(
                          (String value) {
                            return DropdownMenuItem<String>(
                              child: Text(value),
                              value: value,
                            );
                          },
                        ).toList(),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.blue[900]),
                      decoration: InputDecoration(
                        labelText: 'Habilidades requeridas',
                        hintText: 'Ejemplo: php,programador en c++, etc',
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white),
                          borderRadius: new BorderRadius.circular(25.7),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white),
                          borderRadius: new BorderRadius.circular(25.7),
                        ),
                      ),
                      maxLines: 2,
                      onSaved: (value) {
                        nombreProyect = value;
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.blue[900]),
                      decoration: InputDecoration(
                        labelText: 'Remuneracion',
                        hintText: 'S/.',
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white),
                          borderRadius: new BorderRadius.circular(25.7),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white),
                          borderRadius: new BorderRadius.circular(25.7),
                        ),
                      ),
                      maxLines: 1,
                      keyboardType: TextInputType.number,
                      onSaved: (value) {
                        nombreProyect = value;
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.blue[900]),
                      decoration: InputDecoration(
                        labelText: 'Fecha',
                        hintText: 'Ejemplo: DD/MM/AAAA o DD de MM AAAA',
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white),
                          borderRadius: new BorderRadius.circular(25.7),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white),
                          borderRadius: new BorderRadius.circular(25.7),
                        ),
                      ),
                      maxLines: 1,
                      onSaved: (value) {
                        nombreProyect = value;
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
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
                        //_showSecondPage(context);
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => pageViewFormu()));
                      },
                      color: Colors.blue[900],
                      child: Text('Verificar datos',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
    }

    Navigator.of(context).pushNamed("/pageView",
        arguments: pageViewFormuArguments(
          nombreProyect: this.nombreProyect,
          descripcionProyect: this.descripcionProyect,
          ubicacionProyect: this.ubicacionProyect,
          habilidadesProyect: this.habilidadesProyect,
          remuneracionProyect: this.remuneracionProyect,
        ));
  }
}

/*
tagssss
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tags/flutter_tags.dart';

class pageFormulario extends StatefulWidget {
  @override
  _pageFormularioState createState() => _pageFormularioState();
}

class _pageFormularioState extends State<pageFormulario> {
  List tags = new List();

  final GlobalKey<TagsState> _globalKey = GlobalKey<TagsState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Tags(
        key: _globalKey,
        itemCount: tags.length,
        columns: 6,
        textField: TagsTextField(
          textStyle: TextStyle(fontSize: 14.0),
          onSubmitted: (string) {
            setState(
              () {
                tags.add(Item(title: string));
              },
            );
          },
        ),
        itemBuilder: (index) {
          final Item currentItem = tags[index];

          return ItemTags(
            index: index,
            title: currentItem.title,
            customData: currentItem.customData,
            textStyle: TextStyle(fontSize: 14.0),
            combine: ItemTagsCombine.withTextBefore,
            onPressed: (i) => print(i),
            onLongPressed: (i) => print(i),
            removeButton: ItemTagsRemoveButton(onRemoved: () {
              setState(() {
                tags.removeAt(index);
              });
              return true;
            }),
          );
        },
      ),
    );
  }
}*/
