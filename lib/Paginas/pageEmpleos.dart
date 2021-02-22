import 'package:flutter/material.dart';
import 'package:app_movil/Paginas_complementarias/complementPageBuscar/pageResultadoBusqueda.dart';

class pageEmpleos extends StatefulWidget {
  @override
  _pageEmpleosState createState() => _pageEmpleosState();
}

class _pageEmpleosState extends State<pageEmpleos> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.lightBlue[50],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Center(
            child: Text('Empleos', textAlign: TextAlign.center),
          ),
          /*
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            ),
          ),*/
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 5.0,
            /*labelColor: Colors.blue[900],
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
                color: Colors.green,
              ),*/
            /*indicator: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  color: Colors.white),*/
            tabs: <Widget>[
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Todo"),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Abierto"),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text("En proceso"),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Anteriores"),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Guardados"),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            todosEmpleos(),
            abiertosEmpleos(),
            procesoEmpleos(),
            anterioresEmpleos(),
            guardadosEmpleos(),
          ],
        ),
      ),
    );
  }
}

class todosEmpleos extends StatelessWidget {
  const todosEmpleos({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: 450.0,
        /*decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
        ),*/
        child: Column(
          children: <Widget>[
            SizedBox(height: 15.0),
            Text(
              'Todos los Empleos recomendados',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            cajaResultados(),
          ],
        ),
      ),
    );
  }
}

class abiertosEmpleos extends StatelessWidget {
  const abiertosEmpleos({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: 450.0,
        child: Column(
          children: <Widget>[
            SizedBox(height: 15.0),
            Text(
              'Empleos/proyectos guardados',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            cajaResultados(),
          ],
        ),
      ),
    );
  }
}

class procesoEmpleos extends StatelessWidget {
  const procesoEmpleos({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: 450.0,
        child: Column(
          children: <Widget>[
            SizedBox(height: 15.0),
            Text(
              'Empleos/proyectos Favoritos',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            cajaResultados(),
          ],
        ),
      ),
    );
  }
}

class anterioresEmpleos extends StatelessWidget {
  const anterioresEmpleos({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: 450.0,
        child: Column(
          children: <Widget>[
            SizedBox(height: 15.0),
            Text(
              'Proyectos/empleos en proceso',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            cajaResultados(),
          ],
        ),
      ),
    );
  }
}

class guardadosEmpleos extends StatelessWidget {
  const guardadosEmpleos({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: 450.0,
        child: Column(
          children: <Widget>[
            SizedBox(height: 15.0),
            Text(
              'Todos los Empleos recomendados',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            cajaResultados(),
          ],
        ),
      ),
    );
  }
}

///////////////////////////////////////////
/*
class StackOver extends StatefulWidget {
  @override
  _StackOverState createState() => _StackOverState();
}

class _StackOverState extends State<StackOver>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tab bar',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // give the tab bar a height [can change hheight to preferred height]
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
              ),
              child: TabBar(
                controller: _tabController,
                // give the indicator a decoration (color and border radius)
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  color: Colors.green,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: [
                  // first tab [you can add an icon using the icon property]
                  Tab(
                    text: 'Place Bid',
                  ),

                  // second tab [you can add an icon using the icon property]
                  Tab(
                    text: 'Buy Now',
                  ),
                ],
              ),
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(controller: _tabController, children: [
                // first tab bar view widget
                Center(
                  child: Text(
                    'Place Bid',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
*/
/////////////
/*
import 'package:flutter/material.dart';

typedef SwitchOnChange = Function(int);

class CustomSwitch extends StatefulWidget {
  SwitchOnChange onChange;

  CustomSwitch({this.onChange});

  @override
  State<StatefulWidget> createState() {
    return CustomSwitchState();
  }
}

class CustomSwitchState extends State<CustomSwitch>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  GlobalKey key = GlobalKey();
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 100)).then((v) {
      controller = AnimationController(
          vsync: this, duration: Duration(milliseconds: 300));

      tabWidth = key.currentContext.size.width / 4;
      // var width = (media.size.width - (2 * media.padding.left)) / 2;
      animation = Tween<double>(begin: 0, end: tabWidth).animate(controller);

      setState(() {});

      controller.addListener(() {
        setState(() {});
      });
    });
    super.initState();
  }

  var selectedValue = 0;
  double tabWidth = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        selectedValue == 0 ? this.controller.forward() : controller.reverse();
        selectedValue = selectedValue == 0 ? 1 : 0;
      },
      child: Container(
        key: key,
        height: 44,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(22)),
        child: Stack(
          children: <Widget>[
            Row(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(animation?.value ?? 0, 0),
                  child: Container(
                    height: 44,
                    width: tabWidth,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 3),
                        ]),
                  ),
                ),
              ],
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: tabWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[SizedBox(width: 5), Text("Place Bid")],
                    ),
                  ),
                  Container(
                    width: tabWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[SizedBox(width: 5), Text("Buy now")],
                    ),
                  ),
                  Container(
                    width: tabWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[SizedBox(width: 5), Text("asd")],
                    ),
                  ),
                  Container(
                    width: tabWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width: 5),
                        Text("asdasdsadggg"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
