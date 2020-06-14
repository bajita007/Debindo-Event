import 'package:debindo_mks/Ui/circle.dart';
import 'package:debindo_mks/color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
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
              Column(
                children: <Widget>[
                  Expanded(
                      child: Center(
                          child: new Image.asset(
                    "assets/images/debindo_mks.png",
                    height: 200,
                    fit: BoxFit.fill,
                  ))),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(25.0),
                          topRight: const Radius.circular(25.0),
                        )),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: _theme.primaryColor,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: FlatButton(
                                  child: Text(
                                    "LOGIN",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  onPressed: () {
                                    //  Navigator.of(context).pushNamed(LoginRoute);
                                  },
                                ),
                              ),
                            ),
                            SizedBox(width: 40.0),
                            Expanded(
                                child: Container(
                              decoration: BoxDecoration(
                                color: CustomColors.facebookColor,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: FlatButton(
                                child: Text(
                                  "REGISTER",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                onPressed: () {
                                  // Navigator.of(context).pushNamed(RegisterRoute);
                                },
                              ),
                            )),
                          ],
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Divider(
                                color: CustomColors.GreyBackground,
                              ),
                            ),
                            Container(
                              child: Text(
                                "Or connect with social",
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 15.0,
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: CustomColors.GreyBackground,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15.0),
                          padding: EdgeInsets.symmetric(
                            horizontal: 15.0,
                          ),
                          height: 45.0,
                          decoration: BoxDecoration(
                            color: CustomColors.facebookColor,
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.facebookSquare,
                                color: Colors.white,
                              ),
                              Expanded(
                                child: Text(
                                  "Login with Facebook",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15.0),
                          padding: EdgeInsets.symmetric(
                            horizontal: 15.0,
                          ),
                          height: 45.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: _theme.primaryColor),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.google,
                                color: _theme.primaryColor,
                              ),
                              Expanded(
                                child: Text(
                                  "Login with Google",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: _theme.primaryColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ])));
  }
}
