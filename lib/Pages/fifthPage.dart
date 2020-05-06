
import 'package:Quizzup/Pages/sixthPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'firstPage.dart';

class FifthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: SafeArea(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              RaisedButton(
                child: Icon(
                  Icons.close,
                  size: 30.0,
                ),
                onPressed: () {
                  Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => new FirstScreen()),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'CONGRATULATIONS',
                        style: TextStyle(
                          fontSize: 30.0,
                        ),
                      ),

                      Container(
                          height: 150.0,
                          child: Image.asset("images/g.gif")),

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
                        CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage(
                              'images/rohith.jpeg'),
                        ),
                        Text('Rohith'),
                        Text('10'),
                      ],
                    ),

                    Row(
                      children:<Widget>[
                        Column(
                          children: <Widget>[

                            Text(
                              'VS',
                              style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top:15.0),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 50.0,
                            backgroundImage: AssetImage(
                                'images/J.jpg'),
                          ),
                          Text('Rahul'),
                          Text('0'),


                        ],
                      ),
                    ),


                  ],

                ),

              ),
              Container(
                margin: EdgeInsets.only(left: 275),
                height: 30.0,
                color: Colors.green,
                child: RaisedButton(
                  child: Text(''
                      'Add friend',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  textColor: Colors.white,
                  color: Colors.green,

                ),
              ),
              Container(
                width: 450.0,
                height: 220.0,
                child: Card(

                  color: Colors.black54,
                  margin: EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 25.0),
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'LEADERBOARD RANK',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                        ),
//                          Padding(
//                            padding: const EdgeInsets.only(left: 145.0),
//                            child: Icon(
//                                Icons.arrow_forward
//                            ),
//
//                          ),
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
                                              fontSize: 10.0,
                                            ),
                                          ),
                                          Text(
                                            '444444',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10.0,
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
                                                        fontSize: 10.0,
                                                      ),
                                                    ),
                                                    Text(
                                                      '444444',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10.0,
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
                                                        fontSize: 10.0,
                                                      ),
                                                    ),
                                                    Text(
                                                      '444444',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10.0,
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
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:40.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(''
                                  'Edapt',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),

                              Text(
                                'Edapt',
                                style: TextStyle(
                                  color:Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),

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
                  new MaterialPageRoute(builder: (context) => new SixthPage()),
                );
              }
          ),
        ),

      ),
    );
  }
}