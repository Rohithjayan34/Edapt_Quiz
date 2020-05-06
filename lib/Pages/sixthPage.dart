

import 'package:Quizzup/Pages/seventhPage.dart';
import 'package:flutter/material.dart';


class SixthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              RaisedButton(

                child: Icon(
                  Icons.close,
                  size: 30.0,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),

              Container(
                width: 450.0,
                height: 700.0,
                child: Card(
                  color: Colors.black54,
                  margin: EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Padding(
                    padding: EdgeInsets.only(top:50.0),
                    child:Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(

                              Icons.keyboard_arrow_left,
                              color: Colors.white,
                              size: 60,
                            ),

                            Text(
                              'Last week',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),

                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Text(
                                'This Week',
                                style: TextStyle(
                                    color: Colors.black
                                ),
                              ),
                              radius: 40,
                            ),

                            Text(
                              'All Time',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.white,
                              size: 60,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:170,top:60),
                          child: Text(

                            'LeaderBoard Rank',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,

                            ),
                          ),
                        ),

                        Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left:14.0,right: 14),
                              child: Divider(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: <Widget>[
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.white,
                                        size: 25,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: <Widget>[
                                            Text(
                                              'Neighborhood',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.0,
                                              ),
                                            ),
                                            Text(
                                              '444444',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.0,
                                              ),
                                            ),
                                            Text(
                                              '_______________',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,

                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                      Container(height: 40, child: VerticalDivider(color: Colors.black)),

                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Column(
                                          children: <Widget>[
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment
                                                  .start,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.home,
                                                  color: Colors.white,
                                                  size: 22,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    children: <Widget>[
                                                      Text(
                                                        'India',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12.0,
                                                        ),
                                                      ),
                                                      Text(
                                                        '444444',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12.0,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(height: 40, child: VerticalDivider(color: Colors.black)),

                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Column(
                                          children: <Widget>[
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment
                                                  .start,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.language,
                                                  color: Colors.white,
                                                  size: 22,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(5.0),
                                                  child: Column(
                                                    children: <Widget>[
                                                      Text(
                                                        'Global',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12.0,
                                                        ),
                                                      ),
                                                      Text(
                                                        '444444',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12.0,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),


                                              ],
                                            ),

                                          ],
                                        ),
                                      ),

                                    ],
                                  ),

                                ],
                              ),
                            ),

                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  CircleAvatar(
                                    backgroundImage: AssetImage('images/rohith.jpeg'),
                                    radius: 30.0,
                                  ),

                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          'Rohith Jayan',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),

                                      ),
                                      Text('1',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),


                                ],
                              ),

                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Divider(
                                color: Colors.white,
                              ),
                            ),

                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  CircleAvatar(
                                    backgroundImage: AssetImage('images/J.jpg'),
                                    radius: 30.0,
                                  ),

                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          'Sachin',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),

                                      ),
                                      Text('1',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),


                                ],
                              ),

                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Divider(
                                color: Colors.white,
                              ),
                            ),

                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  CircleAvatar(
                                    backgroundImage: AssetImage('images/appu.jpeg'),
                                    radius: 30.0,
                                  ),

                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          'Rahul Jayan',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),

                                      ),
                                      Text('1',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),


                                ],
                              ),

                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Divider(
                                color: Colors.white,
                              ),
                            ),

                            Text(
                              'View More',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),

                  ),

                ),
              ),
            ],
          ),
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
                  new MaterialPageRoute(builder: (context) => new SeventhPage()),
                );
              }
          ),
        ),
      ),
    );

  }}