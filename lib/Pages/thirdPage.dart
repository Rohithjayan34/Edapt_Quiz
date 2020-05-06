

import 'package:Quizzup/Pages/fourthPage.dart';
import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            RaisedButton(

              child: Icon(
                Icons.arrow_back,
                size: 30.0,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),

            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Center(
                child: Column(

                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage(
                              'images/rohith.jpeg'),
                        ),
                        Text('Rohith'),
                        Container(height: 80, child: VerticalDivider(color: Colors.black)),

                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Center(
                            child: Column(

                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    GFAvatar(
                                        size: 55.0,
                                        backgroundImage:AssetImage('images/a.jpeg'),
                                        shape: GFAvatarShape.standard
                                    ),
                                    Text('History'),
                                    Container(height: 80, child: VerticalDivider(color: Colors.black)),
                                  ],
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Center(
                                    child: Column(

                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            CircleAvatar(
                                              radius: 50.0,
                                              backgroundImage: AssetImage(
                                                  'images/J.jpg'),
                                            ),
                                            Text('Rahul'),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar:
      Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 50,
          width: 100,
          child: RaisedButton(
              child: Text(
                'Continue',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                ),
              ),
              textColor: Colors.white,
              color: Colors.green,
              onPressed: () {
                Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new FourthPage()),
                );
              }
          ),
        ),
      ),
    );

  }}