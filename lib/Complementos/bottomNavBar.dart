import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:app_movil/Complementos/tab_navigator.dart';

class bottomNavBar extends StatefulWidget {
  bottomNavBar({Key key /*, this.currIndex*/}) : super(key: key);
  //final int currIndex;

  @override
  _bottomNavBarState createState() => _bottomNavBarState();
}

class _bottomNavBarState extends State<bottomNavBar> {
  /*final List screens = [
    pageEmpleos(),
    pagePublicar(),
    pageBuscar(),
    pageMensaje(),
    pagePerfil(),
    pageFormulario(),
  ];*/

  /*int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }*/

  /*int _currentIndex = 0;
  final List<Widget> _children = [
    pageEmpleos(),
    pagePublicar(),
    pageBuscar(),
    pageMensaje(),
    pagePerfil(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }*/

  int _currentPage = 1;
  List<int> pageKeys = [1, 2, 3, 4, 5];
  Map<int, GlobalKey<NavigatorState>> _navigatorKeys = {
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
    3: GlobalKey<NavigatorState>(),
    4: GlobalKey<NavigatorState>(),
    5: GlobalKey<NavigatorState>(),
  };
  int _selectedIndex = 0;

  void _selectTab(int tabItem, int index) {
    if (tabItem == _currentPage) {
      _navigatorKeys[tabItem].currentState.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _currentPage = pageKeys[index];
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[_currentPage].currentState.maybePop();
        if (isFirstRouteInCurrentTab) {
          if (_currentPage != 1) {
            _selectTab(1, 1);

            return false;
          }
        }
        // let system handle back button if we're on the first route
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        body: Stack(children: <Widget>[
          _buildOffstageNavigator(1),
          _buildOffstageNavigator(2),
          _buildOffstageNavigator(3),
          _buildOffstageNavigator(4),
          _buildOffstageNavigator(5),
        ]),
        /*Scaffold(
      body: _children[_currentIndex],*/
        /*Stack(children: [
        [
          pageEmpleos(),
          pagePublicar(),
          pageBuscar(),
          pageMensaje(),
          pagePerfil(),
          pageFormulario(),
        ][_currentIndex]
      ]),*/
        //screens[_currentIndex],
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _selectedIndex, //_currentIndex,
          showElevation: true,
          itemCornerRadius: 24,
          curve: Curves.easeIn,
          onItemSelected: (int index) {
            _selectTab(pageKeys[index], index);
          }, //onTabTapped,
          /*(index) => setState(() {
          _currentIndex = index;
        }),*/
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: Icon(
                Icons.work,
              ),
              title: Text(
                'Empleos',
              ),
              activeColor: Colors.blue[900],
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.add),
              title: Text('Publicar'),
              activeColor: Colors.blue[900],
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.search),
              title: Text('Buscar'),
              activeColor: Colors.blue[900],
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.sms),
              title: Text('Mensaje'),
              activeColor: Colors.blue[900],
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('Perfil'),
              activeColor: Colors.blue[900],
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOffstageNavigator(int tabItem) {
    return Offstage(
      offstage: _currentPage != tabItem,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[tabItem],
        tabItem: tabItem,
      ),
    );
  }
}
