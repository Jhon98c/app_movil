import 'package:app_movil/Paginas_complementarias/complementPagePerfil/edit_profile.dart';
import 'package:flutter/material.dart';

class pagePerfil extends StatefulWidget {
  @override
  _pagePerfilState createState() => _pagePerfilState();
}

class _pagePerfilState extends State<pagePerfil> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Center(
          child: Text('Perfil', textAlign: TextAlign.center),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
      ),
      body: Center(
        child: Container(
            width: 450.0,
            padding: EdgeInsets.only(left: 16, top: 25, right: 16),
            /*child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },*/
            child: ListView(
              children: [
                /*Text(
                  "Mi Perfil",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),*/
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 10))
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/usuario.guia.png'),
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 4,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                              ),
                              color: Colors.blue[900],
                            ),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 375.0,
                  width: 100.0,
                  //color: Colors.white,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    /*border: Border.all(
                    color: Colors.red, //                   <--- border color
                    width: 10.0,
                  ),*/
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'Mi perfil',
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      /*
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'hola',
                          icon: Icon(Icons.wallet_giftcard),
                          hoverColor: Colors.red,
                        ),
                      ),
                      TextField(
                        style: TextStyle(color: Colors.blue[900]),
                        decoration: InputDecoration(
                          labelText: 'Nombre',
                          icon: Icon(Icons.verified_user),
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                new BorderSide(color: Colors.lightBlue[50]),
                            borderRadius: new BorderRadius.circular(25.7),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                new BorderSide(color: Colors.lightBlue[50]),
                            borderRadius: new BorderRadius.circular(25.7),
                          ),
                        ),
                        maxLines: 2,
                      ),*/
                      dateUser(
                        child: Icon(
                          Icons.person,
                          color: Colors.blue[900],
                          size: 26.0,
                        ),
                        text: 'Jhon Javier Cutipa',
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      dateUser(
                        child: Icon(
                          Icons.email,
                          color: Colors.blue[900],
                          size: 26.0,
                        ),
                        text: 'jcv.pol98@gmail.com',
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      dateUser(
                        child: Icon(
                          Icons.g_translate,
                          color: Colors.blue[900],
                          size: 26.0,
                        ),
                        text: 'Ingles, Portugues',
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      dateUser(
                        child: Icon(
                          Icons.place,
                          color: Colors.blue[900],
                          size: 26.0,
                        ),
                        text: 'Puno',
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      dateUser(
                        child: Icon(
                          Icons.phone,
                          color: Colors.blue[900],
                          size: 26.0,
                        ),
                        text: '+51 922045933',
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 150.0,
                  width: 100.0,
                  //color: Colors.white,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    /*border: Border.all(
                    color: Colors.red, //                   <--- border color
                    width: 10.0,
                  ),*/
                  ),
                  child: ListView(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'Mis Habilidades',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'PHP',
                            style: TextStyle(
                                color: Colors.blue[900], fontSize: 18.0),
                          ),
                          Text(
                            'Jave',
                            style: TextStyle(
                                color: Colors.blue[900], fontSize: 18.0),
                          ),
                          Text(
                            'Fluttter',
                            style: TextStyle(
                                color: Colors.blue[900], fontSize: 18.0),
                          ),
                          Text(
                            'C++',
                            style: TextStyle(
                                color: Colors.blue[900], fontSize: 18.0),
                          ),
                          Text(
                            'Google Sheets',
                            style: TextStyle(
                                color: Colors.blue[900], fontSize: 18.0),
                          ),
                          Text(
                            'Google Sheets',
                            style: TextStyle(
                                color: Colors.blue[900], fontSize: 18.0),
                          ),
                          Text(
                            'Google Sheets',
                            style: TextStyle(
                                color: Colors.blue[900], fontSize: 18.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                /*buildTextField("Full Name", "Dor Alex", false),
                buildTextField("E-mail", "alexd@gmail.com", false),
                buildTextField("Password", "********", true),
                buildTextField("Location", "TLV, Israel", false),*/
                SizedBox(
                  height: 35,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => edit_Perfil()));
                  },
                  color: Colors.blue[900],
                  //padding: EdgeInsets.symmetric(horizontal: 50),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Editar Perfil",
                    style: TextStyle(
                        fontSize: 14, letterSpacing: 2.2, color: Colors.white),
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class dateUser extends StatelessWidget {
  final Widget child;
  final String text;
  const dateUser({
    Key key,
    this.child,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 350.0,
      //color: Colors.white,
      decoration: BoxDecoration(
        color: Colors.lightBlue[50],
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 10.0,
          ),
          this.child,
          SizedBox(
            width: 10.0,
          ),
          Text(
            this.text,
            style: TextStyle(color: Colors.blue[900], fontSize: 19.0),
          ),
          /*
          Icon(
            Icons.person,
            color: Colors.blue[900],
            size: 26.0,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            'Jhon Javier',
            style: TextStyle(color: Colors.blue[900], fontSize: 19.0),
          ),*/
        ],
      ),
    );
  }
}

//////////////////////////////
/*import 'package:flutter/material.dart';

class pagePerfil extends StatefulWidget {
  @override
  _pagePerfilState createState() => _pagePerfilState();
}

class _pagePerfilState extends State<pagePerfil> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue[50],
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.0),
          child: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.blue[900],
              title: Center(
                child: Column(
                  children: <Widget>[
                    Text('Perfil', textAlign: TextAlign.center),
                    SizedBox(
                      height: 15.0,
                    ),
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
              bottom: PreferredSize(
                child: Column(
                  children: <Widget>[
                    userProfile(),
                    SizedBox(
                      height: 20.0,
                    )
                  ],
                ),
                preferredSize: Size.fromHeight(4.0),
              )),
        ),
        body: Flexible(
          child: Column(
            children: <Widget>[
              Stack(
                children: [
                  Positioned(right: 52.0, bottom: 100.0, child: userProfile())
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class userProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 115.0,
            width: 115.0,
            child: Stack(
              fit: StackFit.expand,
              overflow: Overflow.visible,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/usuario.guia.png'),
                ),
                Positioned(
                  right: -12.0,
                  bottom: 0.0,
                  child: SizedBox(
                    width: 46.0,
                    height: 46.0,
                    child: FlatButton(
                      onPressed: () {
                        print('hola');
                      },
                      child: Icon(Icons.photo_camera),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}*/

/////////////////////
/*
import 'package:flutter/material.dart';

class pagePerfil extends StatefulWidget {
  @override
  _CustomScrollViewComponentState createState() =>
      _CustomScrollViewComponentState();
}

class _CustomScrollViewComponentState extends State<pagePerfil> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: MySliverAppBar(
                  expandedHeight: MediaQuery.of(context).size.height * 0.3),
              pinned: true,
            ),
          ],
        ),
      ),
    );
  }
}

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  MySliverAppBar({@required this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.visible,
      children: [
        /*Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(29, 75, 136, 1.0),
                Color.fromRGBO(18, 57, 99, 1.0)
              ],
            ),
          ),
        ),*/
        Positioned(
            top: expandedHeight / 1.7 - shrinkOffset,
            left: MediaQuery.of(context).size.width / 3.5,
            child: CircleAvatar(
              radius: MediaQuery.of(context).size.width / 4.3,
              backgroundColor: Colors.yellow,
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width / 4.6,
                backgroundImage: NetworkImage(
                    'https://pm1.narvii.com/7219/b493e34427e645f3fb82d09f2185a177d9230392r1-466-658v2_00.jpg'),
              ),
            )),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
*/
