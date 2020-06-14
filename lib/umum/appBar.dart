import 'package:debindo_mks/Ui/circle.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'dart:io' show Platform;
import 'package:debindo_mks/color.dart';

Widget appbar(BuildContext context, String judul) {
  return PreferredSize(
    preferredSize: Size.fromHeight(55.0),
    child: GradientAppBar(
      flexibleSpace: Row(
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
      title: Center(
        child: Text(
          '$judul',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
      elevation: 0,
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [CustomColors.BlueBackground, CustomColors.facebookColor],
      ),
    ),
  );
}

Widget leadAppbar(BuildContext context, String judul) {
  return PreferredSize(
    preferredSize: Size.fromHeight(55.0),
    child: GradientAppBar(
      flexibleSpace: Row(
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
      title: Container(
        child: Text(
          '$judul',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          if (Navigator.of(context).canPop()) {
            Navigator.of(context).pop();
          }
        },
      ),
      elevation: 0,
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [CustomColors.BlueBackground, CustomColors.facebookColor],
      ),
    ),
  );
}

Widget loginAppbar(BuildContext context, String judul) {
  return PreferredSize(
    preferredSize: Size.fromHeight(55.0),
    child: GradientAppBar(
      flexibleSpace: Row(
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
      title: Container(
        child: Text(
          '$judul',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          if (Navigator.of(context).canPop()) {
            Navigator.of(context).pop();
          }
        },
      ),
      actions: <Widget>[
        new Container(
          child: new Row(
            children: <Widget>[
              new Container(
                height: 28.0,
                width: 28.0,
                padding: EdgeInsets.all(6.0),
                decoration: new BoxDecoration(
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(100.0)),
                    color: Colors.orangeAccent),
                alignment: Alignment.centerRight,
                child: new Icon(
                  Icons.local_bar,
                  color: Colors.white,
                  size: 16.0,
                ),
              ),
              new Container(
                padding: EdgeInsets.all(6.0),
                decoration: new BoxDecoration(
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(5.0)),
                    color: Color(0x50FFD180)),
                child: new Text(
                  "1.781 poin",
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
            ],
          ),
        ),
      ],
      elevation: 0,
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [CustomColors.BlueBackground, CustomColors.facebookColor],
      ),
    ),
  );
}
