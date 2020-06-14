import 'package:carousel_slider/carousel_slider.dart';
import 'package:debindo_mks/Ui/textStyle.dart';
import 'package:debindo_mks/color.dart';
import 'package:debindo_mks/model/m_event.dart';
import 'package:debindo_mks/umum/appBar.dart';
import 'package:debindo_mks/widget/popularItem.dart';
import 'package:debindo_mks/widget/tabKategory.dart';
import 'package:flutter/material.dart';

String selectedCategorie = "Adults";

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  String judul = "Debindo Makassar";
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1536679545597-c2e5e1946495?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1543922596-b3bbaba80649?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1502943693086-33b5b1cfdf2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  Widget listEvent() {
    return Container(
        height: 200.0,
        child: Stack(children: <Widget>[
          carouselSlider = CarouselSlider(
            onPageChanged: (index) {
              setState(() {
                _current = index;
              });
            },
            items: imgList.map((imgUrl) {
              return Container(
                  margin: EdgeInsets.only(top: 10, right: 5, left: 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      child: Image.network(
                        imgUrl,
                        width: 10000,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ));
            }).toList(),
            height: 200,
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 2.0,
          ),
          Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                  //  color: Colors.grey[400],
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: map<Widget>(imgList, (index, url) {
                  return Container(
                    width: 7.0,
                    height: 7.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index
                          ? CustomColors.BlueDark
                          : Colors.white,
                    ),
                  );
                }),
              )))
        ]));
  }

  ScrollController _controller = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: loginAppbar(context, judul),
        body: Container(
            child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              listEvent(),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Divider(
                  height: 1,
                  color: Colors.grey,
                ),
              ),
              TabKategory(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Divider(
                  height: 1,
                  color: Colors.grey,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  "Event Terbaru",
                  style: AppTextStyles.HeaderTextBlack,
                ),
              ),
              Container(
                child: ListView.builder(
                    controller: _controller,
                  shrinkWrap: true,
                  itemCount: events.length,
                  itemBuilder: (context, index) {
                    return
                      new PlanetRow(events[index]);
                  }
                ),
              ),
            ],
          ),
        )));
  }
}
/*

height: 200,
child: ListView.builder(
itemCount: books.length,
scrollDirection: Axis.horizontal,
shrinkWrap: true,
physics: ClampingScrollPhysics(),
itemBuilder: (context, index){
return BooksTile(
imgAssetPath: books[index].imgAssetPath,
rating: books[index].rating,
title: books[index].title,
description: books[index].description,
categorie: books[index].categorie,
);
}),
),*/
