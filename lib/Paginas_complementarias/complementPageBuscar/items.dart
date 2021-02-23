// To parse this JSON data, do
//
//     final items = itemsFromJson(jsonString);

import 'dart:convert';

List<Items> itemsFromJson(String str) =>
    List<Items>.from(json.decode(str).map((x) => Items.fromJson(x)));

String itemsToJson(List<Items> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Items {
  Items({
    this.nombreProyecto,
    this.descriProyecto,
    this.ubicacion,
    this.habilidades,
    this.remuneracion,
    this.fecha,
  });

  String nombreProyecto;
  String descriProyecto;
  String ubicacion;
  String habilidades;
  String remuneracion;
  String fecha;

  factory Items.fromJson(Map<String, dynamic> json) => Items(
        nombreProyecto: json["nombreProyecto"],
        descriProyecto: json["descriProyecto"],
        ubicacion: json["Ubicacion"],
        habilidades: json["Habilidades"],
        remuneracion: json["remuneracion"],
        fecha: json["Fecha"],
      );

  Map<String, dynamic> toJson() => {
        "nombreProyecto": nombreProyecto,
        "descriProyecto": descriProyecto,
        "Ubicacion": ubicacion,
        "Habilidades": habilidades,
        "remuneracion": remuneracion,
        "Fecha": fecha,
      };
}
