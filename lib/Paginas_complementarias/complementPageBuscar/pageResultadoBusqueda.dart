import 'package:flutter/material.dart';
import 'package:app_movil/Paginas_complementarias/complementPageBuscar/pageViewResulBusqueda.dart';

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
            children: <Widget>[cajaResultados()],
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
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          btnResultados(
            text: 'PRACTICANTE PROGRAMADOR DE SISTEMAS Y DISEÑO DE PAGINAS WEB',
            text1:
                'FABRICA DE CALZADO INDUSTRIAL REQUIERE CONTRATAR A JOVEN HOMBRE O MUJER DE EDAD 22 A 30 AÑOS QUE TENGA ESTUDIO DE PROGRAMACION DE SISTEMAS, SOFTWARE, SOPORTE TÉCNICO Y DISEÑO GRAFICO, PAGINAS WEB.QUE TENGA INICIATIVA PROPIA, CREATIVO, INNOVADOR, DINAMICO, Y QUE SE ADAPTE A TRABAJO BAJO PRESION.QUE VIVA CERCA A LA ZONA SAN JUAN DE LURIGANCHO (CHIMU, CAMPOY, ZARATE, PTE NUEVO, ET',
          ),
          btnResultados(
            text: 'Se Requiere Analistas de Crédito con experiencia',
            text1:
                'Descripción ANALISTA DE CRÉDITO: REQUISITOS: - Indispensable contar con experiencia mínima de 1 año en entidades financieras - Contar con cartera de clientes en la zona a postular. - Dominio de la evaluación cualitativa y cuantitativa para microcrédito y créditos comerciales en el sector PYMES. FUNCIONES: - Gestionar en forma eficiente la cartera de créditos. - Lograr indicadores óptimos de rentabilidad, calidad y crecimiento. - Efectuar actividades de promoción de los productos y servicios financieros. - Identificar oportunidades de negocio que faciliten el crecimiento y la diversificación del riesgo de la cartera de crédito.',
          ),
          btnResultados(
            text: 'Ejecutivo de Ventas',
            text1:
                'Descripción Empresa ODISEC SAC especialista en brindar servicios comerciales de productos financieros y socio estratégico del grupo SCOTIABANK; se encuentra en proceso de reclutamiento de EJECUTIVOS DE VENTA para FINANCIERA CREDISCOTIA Zona de JULIACA.',
          ),
          btnResultados(
            text: 'gestor de ventas',
            text1:
                'Descripción Empresa importante distribuidora de productos de consumo masivo, te invita a participar en el proceso de selección para cubrir nuestras vacantes como: GESTOR DE VENTAS Territorios para laborar: - Puno - Juliaca - Provincias Estudios: - Deseable estudio superiores y/o técnicos concluidos en carreras de Administración y marketing, Ing. Industrial y/o afines. - Microsoft Office – Básico',
          ),
          btnResultados(
            text: 'Asesores de Servicio',
            text1:
                'Descripción ¡Creemos que tu talento merece la mejor Oportunidad! Por encargo de nuestro cliente importante empresa de telefonía, nos encontramos en la búsqueda de: Asesores de Servicio Requisitos - Estudios técnicos culminados o universitarios culminados, truncos o en curso de Administración, Comunicaciones, Ingeniería Industrial y/o afines',
          ),
          btnResultados(
            text: 'Ejecutivo Comercial',
            text1:
                'Descripción Nuestro cliente importante empresa industrial, líder en la fabricación y comercialización de puertas, se encuentra en búsqueda del mejor talento para el cargo de EJECUTIVO COMERCIAL – VIVIENDA RURAL REQUISITOS: - Estudios Técnicos y/o Universitarios completos. - Tener vehículo propio para desplazamiento (empresa cubre los gastos de combustible) - Mínimo 1 año de experiencia realizando venta de productos técnicos.',
          ),
        ],
      ),
    );
  }
}

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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(1.0),
      ),
      child: InkWell(
        splashColor: Colors.orange,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => pageViewResulBusqueda(text, text1)));
        },
        child: Container(
          height: 150,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey[400],
                width: 1,
              ),
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                width: 380.0,
                child: Text(
                  this.text,
                  maxLines: 2,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
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
                  maxLines: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
