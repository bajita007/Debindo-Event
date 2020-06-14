import 'package:debindo_mks/Ui/textStyle.dart';
import 'package:debindo_mks/model/m_event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../color.dart';

class PlanetRow extends StatelessWidget {
  final Event planet;

  PlanetRow(this.planet);

  @override
  Widget build(BuildContext context) {
    final planetThumbnail = Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Card(
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    width: 92.0,
                    height: 92.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      color: Colors.white,
                      boxShadow: <BoxShadow>[
                        new BoxShadow(
                          color: Colors.black12,
                          offset: new Offset(5.0, 5.0),
                        ),
                      ],
                    ),
                    child: new Image(
                      image: new AssetImage(planet.image),
                      height: 92.0,
                      width: 92.0,
                    )))
          ],
        ));

    Widget _planetValue({String value, IconData icon}) {
      return new Row(children: <Widget>[
        new Icon(icon, size: 12.0),
        new Container(width: 8.0),
        new Text(planet.gravity, style: AppTextStyles.regulerText),
      ]);
    }

    final planetCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text(
            planet.name,
            style: AppTextStyles.HeaderTextBlack,
          ),
          new Container(height: 10.0),
          new Text(planet.location,
              style: AppTextStyles.unselectedTabTextStyle),
          new Container(
              margin: new EdgeInsets.symmetric(vertical: 8.0),
              height: 2.0,
              width: 18.0,
              color: new Color(0xff00c6ff)),
          new Row(
            children: <Widget>[
              new Expanded(
                  child: _planetValue(value: planet.distance, icon: Icons.map)),
              new Expanded(
                  child: _planetValue(
                      value: planet.gravity, icon: Icons.arrow_drop_down))
            ],
          ),
        ],
      ),
    );

    final planetCard = new Container(
      child: planetCardContent,
      height: 124.0,
      margin: new EdgeInsets.only(left: 46.0),
      decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            new BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
              offset: new Offset(0.0, 10.0),
            ),
          ],
          borderRadius: new BorderRadius.circular(8.0),
          border: Border.all(color: Colors.blueAccent)),
    );

    return new Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 5.0,
        ),

          child: Container(
            height: 130,
            alignment: Alignment.bottomLeft,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: new EdgeInsets.only(left: 46.0),
                  height: 130,
                  alignment: Alignment.bottomLeft,
                  child:
                  Card(child:
                  Container(
                      height: 100,
                      padding:
                      EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: <BoxShadow>[
                            new BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10.0,
                              offset: new Offset(0.0, 10.0),
                            ),
                          ]),
                      child: Row(

                        children: <Widget>[
                          Container(
                            width: 50,
                          ),
                          Expanded(
                            child: Container(
                              child: IntrinsicWidth(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    planet.name,
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),

                                  Text(
                                    planet.description,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12 , ),
                                  ),
                                  Spacer(),
                                  Text(
                                    planet.location,
                                    style: TextStyle(color: Color(0xff007084)),
                                  )
                                ],
                              ),
                            ),
                            ),
                          )],
                      )),
                  )
                ),
                planetThumbnail
              ],
            ),
          ),
        );
  }
}

/*
final String imgAssetPath,title,description, categorie;
final int rating;
BooksTile({@required this.rating,@required this.description,
  @required this.title,@required this.categorie, @required this.imgAssetPath});


@override
Widget build(BuildContext context) {
  return GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => BookDetails()
      ));
    },
    child: Container(
      height: 200,
      margin: EdgeInsets.only(right: 16),
      alignment: Alignment.bottomLeft,
      child: Stack(
        children: <Widget>[
          Container(
            height: 180,
            alignment: Alignment.bottomLeft,
            child: Container(
                width: MediaQuery.of(context).size.width - 80,
                height: 140,
                padding: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 110,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 220,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(title, style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15,
                              fontWeight: FontWeight.w500
                          ),),
                          SizedBox(height: 8,),
                          Text(description, style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12
                          ),),
                          Spacer(),
                          Row(
                            children: <Widget>[
                              StarRating(
                                rating: rating,
                              ),
                              Spacer(),
                              Text(categorie,style: TextStyle(
                                  color: Color(0xff007084)
                              ),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
            ),
          ),
          Container(
            height: 180,
            margin: EdgeInsets.only(left: 12,
              top: 6,),
            child: Image.asset(imgAssetPath, height: 150,width: 100,
              fit: BoxFit.cover,),
          )
        ],
      ),
    ),
  );
}
}*/
