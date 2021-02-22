import 'dart:convert';

List<Items> itemsFromJson(String str) =>
    List<Items>.from(json.decode(str).map((x) => Items.fromJson(x)));

String itemsToJson(List<Items> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Items {
  Items({
    this.nombreProyecto,
    this.descriProyecto,
    this.remuneracion,
  });

  String nombreProyecto;
  String descriProyecto;
  String remuneracion;

  factory Items.fromJson(Map<String, dynamic> json) => Items(
        nombreProyecto: json["nombreProyecto"],
        descriProyecto: json["descriProyecto"],
        remuneracion: json["remuneracion"],
      );

  Map<String, dynamic> toJson() => {
        "nombreProyecto": nombreProyecto,
        "descriProyecto": descriProyecto,
        "remuneracion": remuneracion,
      };
}
