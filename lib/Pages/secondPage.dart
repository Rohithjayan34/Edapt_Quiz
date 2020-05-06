

import 'package:Quizzup/Pages/thirdPage.dart';
import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  SafeArea(
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
              padding: const EdgeInsets.only(top: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage(
                            'images/rohith.jpeg'),
                      ),
                      Text('Rohith'),
                    ],
                  ),

                  Row(
                    children:<Widget>[
                      Column(
                        children: <Widget>[
                          GFAvatar(
                              size: 55.0,
                              backgroundImage:AssetImage('images/e.jpeg'),
                              shape: GFAvatarShape.standard


                          ),
                          Text('English'),
                        ],
                      ),
                    ],
                  ),

                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage(
                            'images/q.jpg'),
                      ),
                      Text('Rahul'),
                    ],
                  ),

                ],

              ),

            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Select Topic to Change',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0,right: 30.0),
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      GFAvatar(
                          size: 55.0,
                          backgroundImage:AssetImage('images/c.jpeg'),
                          shape: GFAvatarShape.standard


                      ),
                      Text('Rohith'),
                    ],
                  ),

                  Row(
                    children:<Widget>[
                      Column(
                        children: <Widget>[
                          GFAvatar(
                              size: 55.0,
                              backgroundImage:AssetImage('images/b.jpeg'),
                              shape: GFAvatarShape.standard


                          ),
                          Text('English'),
                        ],
                      ),
                    ],
                  ),

                  Column(
                    children: <Widget>[
                      GFAvatar(
                          size: 55.0,
                          backgroundImage:AssetImage('images/a.jpeg'),
                          shape: GFAvatarShape.standard
                      ),
                      Text('Rahul'),
                    ],
                  ),

                ],

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
                  new MaterialPageRoute(builder: (context) => new ThirdPage()),
                );
              }
          ),
        ),

      ),);
  }
}