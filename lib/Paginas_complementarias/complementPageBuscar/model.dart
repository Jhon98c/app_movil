//DATOS PARA LEER JSON WEB

class Posts {
  final String nombreProyecto;
  final String descriProyecto;
  final String Ubicacion;
  final String Habilidades;
  final String remuneracion;
  final String Fecha;

  Posts({
    this.nombreProyecto,
    this.descriProyecto,
    this.Ubicacion,
    this.Habilidades,
    this.remuneracion,
    this.Fecha,
  });

  factory Posts.formJson(Map<String, dynamic> json) {
    return new Posts(
      nombreProyecto: json['nombreProyecto'],
      descriProyecto: json['descriProyecto'],
      Ubicacion: json['Ubicacion'],
      Habilidades: json['Habilidades'],
      remuneracion: json['remuneracion'],
      Fecha: json['Fecha'],
    );
  }
}
