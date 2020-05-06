

import 'package:Quizzup/Pages/fourthPage.dart';
import 'package:getflutter/getflutter.dart';
import 'package:flutter/material.dart';


class EleventhPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: SingleChildScrollView(
            child: SafeArea(
              child:
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Center(
                        child: Column(

                          children: <Widget>[
                            Column(

                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top:30.0,bottom: 40),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'Room Code: 123456',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.share),
                                      ),
                                    ],
                                  ),
                                ),



                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GFAvatar(
                                      size: 55.0,
                                      backgroundImage: AssetImage(
                                          'images/c.jpeg'),
                                      shape: GFAvatarShape.standard
                                  ),
                                ),

                                Text('You'),



                                Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Text('VS',
                                    style: TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),

                                Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
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
                                            Column(
                                              children: <Widget>[
                                                CircleAvatar(
                                                  radius: 50.0,
                                                  backgroundImage: AssetImage(
                                                      'images/appu.jpeg'),
                                                ),
                                                Text('Rahul'),
                                              ],
                                            ),
                                            Column(
                                              children: <Widget>[
                                                CircleAvatar(
                                                  radius: 50.0,
                                                  backgroundImage: AssetImage(
                                                      'images/J.jpg'),
                                                ),
                                                Text('Jason'),
                                              ],
                                            ),

                                          ],
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.only(top:30.0),
                                          child: Column(
                                            children: <Widget>[
                                              CircleAvatar(
                                                radius: 50.0,
                                                backgroundImage: AssetImage(
                                                    'images/cany.jpg'),
                                              ),
                                              Text('Canyamon'),
                                            ],
                                          ),
                                        ),

                                      ],
                                    )
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),),),
          ),
          bottomNavigationBar:
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
              ),

              height: 50,
              width: 100,
              child: RaisedButton(
                  child: Text(
                    'Play',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                  ),
                  textColor: Colors.white,
                  color: Colors.green,
                  onPressed: () {
                    Navigator.push(context,
                      new MaterialPageRoute(
                          builder: (context) => new FourthPage()),
                    );
                  }
              ),
            ),
          ),

        ),),
    );
  }}