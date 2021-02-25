class Post {
  String nombreProyecto;
  String descriProyecto;
  String ubicacion;
  String habilidades;
  String remuneracion;
  String fecha;

  Post(
      {this.nombreProyecto,
      this.descriProyecto,
      this.ubicacion,
      this.habilidades,
      this.remuneracion,
      this.fecha});

  Post.fromJson(Map<String, dynamic> json) {
    nombreProyecto = json['nombreProyecto'];
    descriProyecto = json['descriProyecto'];
    ubicacion = json['Ubicacion'];
    habilidades = json['Habilidades'];
    remuneracion = json['remuneracion'];
    fecha = json['Fecha'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nombreProyecto'] = this.nombreProyecto;
    data['descriProyecto'] = this.descriProyecto;
    data['Ubicacion'] = this.ubicacion;
    data['Habilidades'] = this.habilidades;
    data['remuneracion'] = this.remuneracion;
    data['Fecha'] = this.fecha;
    return data;
  }
}
