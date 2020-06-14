import 'dart:async';

import 'package:debindo_mks/Ui/circle.dart';
import 'package:debindo_mks/User/launcherBot.dart';
import 'package:debindo_mks/color.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 3);
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
        return new LauncherBot();
      }));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [CustomColors.BlueDark, CustomColors.BlueBackground],
            )),
            child: Stack(children: <Widget>[
              Align(
                  alignment: Alignment.bottomRight,
                  child: CustomPaint(
                    painter: CircleOne(),
                  )),
              /*        Padding(
                padding: EdgeInsets.only(left: 125, bottom: 120),
                  child: Align(
                    alignment: Alignment.centerLeft,
                 child: CustomPaint(
                    painter: Circle4(),
                  )
                  )),*/
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CustomPaint(
                    painter: CircleOne(),
                  ),
                  CustomPaint(
                    painter: CircleTwo(),
                  ),
                ],
              ),
              Center(
                child: new Image.asset(
                  "assets/images/debindo_mks.png",
                  height: 150.0,
                  width: 300.0,
                ),
              )
            ])));
  }
}
