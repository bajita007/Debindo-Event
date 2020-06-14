
import 'package:debindo_mks/umum/welcome.dart';
import 'package:flutter/material.dart';
import 'package:debindo_mks/color.dart';
import 'package:debindo_mks/umum/beranda.dart';


class LauncherBot extends StatefulWidget {
  @override
  _HomeLoginState createState() => _HomeLoginState();
}

class _HomeLoginState extends State<LauncherBot> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new Beranda(),
    new Beranda(),
    new WelcomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

        body: _container[_bottomNavCurrentIndex],
        bottomNavigationBar: _buildBottomNavigation());
  }

  Widget _buildBottomNavigation() {
    return new BottomNavigationBar(

      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _bottomNavCurrentIndex = index;
        });
      },
      currentIndex: _bottomNavCurrentIndex,
      items: [
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.home,
           color: CustomColors.BlueIcon,
          ),
          icon: new Icon(
            Icons.home,
            color: Colors.grey,
          ),
          title: new Text(
            'Beranda',
          ),
        ),

        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.list,
            color: CustomColors.BlueIcon,
          ),
          icon: new Icon(
            Icons.list,
            color: Colors.grey,
          ),
          title: new Text('Riwayat'),
        ),

        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.person,
            color: CustomColors.BlueIcon,
          ),
          icon: new Icon(
            Icons.person,
            color: Colors.grey,
          ),
          title: new Text('Akun'),
        ),
      ],
    );
  }

}

