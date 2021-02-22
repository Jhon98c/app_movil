import 'package:flutter/material.dart';
import 'package:app_movil/Complementos/bottomNavBar.dart';
import 'package:app_movil/Paginas/pagePerfil.dart';
import 'package:page_transition/page_transition.dart';
import 'Animations/FadeAnimation.dart';
import 'Paginas_complementarias/complementPagePublicar/pageViewForm.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => HomePage(),
        "/pageView": (BuildContext context) => pageViewFormu(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  AnimationController _scaleController;
  AnimationController _scale2Controller;
  AnimationController _widthController;
  AnimationController _positionController;

  Animation<double> _scaleAnimation;
  Animation<double> _scale2Animation;
  Animation<double> _widthAnimation;
  Animation<double> _positionAnimation;

  bool hideIcon = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _scaleController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));

    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 0.8).animate(_scaleController)
          ..addStatusListener(
            (status) {
              if (status == AnimationStatus.completed) {
                _widthController.forward();
              }
            },
          );

    _widthController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));

    _widthAnimation =
        Tween<double>(begin: 80.0, end: 300.0).animate(_widthController)
          ..addStatusListener(
            (status) {
              if (status == AnimationStatus.completed) {
                _positionController.forward();
              }
            },
          );

    _positionController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));

    _positionAnimation =
        Tween<double>(begin: 0.0, end: 215.0).animate(_positionController)
          ..addStatusListener(
            (status) {
              if (status == AnimationStatus.completed) {
                setState(
                  () {
                    hideIcon = true;
                  },
                );
                _scale2Controller.forward();
              }
            },
          );

    _scale2Controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));

    _scale2Animation =
        Tween<double>(begin: 1.0, end: 32.0).animate(_scale2Controller)
          ..addStatusListener(
            (status) {
              if (status == AnimationStatus.completed) {
                Navigator.pushReplacement(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    child: bottomNavBar(),
                  ),
                );
              }
            },
          );
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.pink[900],
      body: Container(
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 120,
              left: 110.0,
              child: Container(
                height: 180.0,
                width: 180.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/logos.jpg'),
                  ),
                ),
              ),
              /*child: Center(
                  child: Image.asset(
                    'assets/images/logos.jpg',
                    //width: MediaQuery.of(context).size.width * 0.5,
                    //fit: BoxFit.contain,
                  ),
                ),*/
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(
                    1,
                    Text(
                      "Bienvenido(a)",
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  FadeAnimation(
                    1.3,
                    Text(
                      "Este es un proyecto de GRUPO SISTEMAS, para ayudarlo a Ud. a encontrar su primer empleo.",
                      style: TextStyle(
                          color: Colors.white.withOpacity(.7),
                          height: 1.4,
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 180,
                  ),
                  FadeAnimation(
                    1.6,
                    AnimatedBuilder(
                      animation: _scaleController,
                      builder: (context, child) => Transform.scale(
                          scale: _scaleAnimation.value,
                          child: Center(
                            child: AnimatedBuilder(
                              animation: _widthController,
                              builder: (context, child) => Container(
                                width: _widthAnimation.value,
                                height: 80,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.blue.withOpacity(.4)),
                                child: InkWell(
                                  onTap: () {
                                    _scaleController.forward();
                                  },
                                  child: Stack(children: <Widget>[
                                    AnimatedBuilder(
                                      animation: _positionController,
                                      builder: (context, child) => Positioned(
                                        left: _positionAnimation.value,
                                        child: AnimatedBuilder(
                                          animation: _scale2Controller,
                                          builder: (context, child) =>
                                              Transform.scale(
                                            scale: _scale2Animation.value,
                                            child: Container(
                                              width: 60,
                                              height: 60,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.blue),
                                              child: hideIcon == false
                                                  ? Icon(
                                                      Icons.arrow_forward,
                                                      color: Colors.white,
                                                    )
                                                  : Container(),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
