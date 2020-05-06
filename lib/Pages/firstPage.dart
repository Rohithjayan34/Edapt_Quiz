
import 'package:Quizzup/Pages/secondPage.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage('images/rohith.jpeg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Rohith Jayan',
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              '100 Points',
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),

                Container(
                  width: 420.0,
                  height: 220.0,
                  child: Card(
                    color: Colors.black54,
                    margin: EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 25.0),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(

                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween,
                            children: <Widget>[
                              Text(
                                'LEADERBOARD RANK',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,

                              ),
                            ],
                          ),

                          Divider(
                            color: Colors.white,
                          ),




                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              children: <Widget>[
                                Row(

                                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Icon(
                                      Icons.home,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text(
                                          'India',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          '444444',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:80.0,top: 5),
                                      child: Container(height: 80, child: VerticalDivider(color: Colors.white)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(left:20.0,right:20.0,top: 10 ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Icon(
                                            Icons.location_on,
                                            color: Colors.white,
                                            size: 25,
                                          ),
                                          Column(
                                            children: <Widget>[
                                              Text(
                                                'Neighborhud',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                ),
                                              ),
                                              Text(
                                                'Playhouse',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                ),
                                              ),
                                              Text(
                                                '3456789',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                ),
                                              ),

                                            ],
                                          ),

                                        ],
                                      ),
                                    ),

                                  ],

                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.language,
                                      color: Colors.white,
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text(
                                          'Global',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          '3456789',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),


                        ],
                      ),


                    ),
                  ),
                ),


                Container(
                  width: 420.0,
                  height: 200.0,
                  child: Card(
                    color: Colors.white60,
                    margin: EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 25.0),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Play with Friend',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Divider(
                                color: Colors.black,
                              ),
                            ],
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
                                      radius: 30.0,
                                      backgroundImage: AssetImage(
                                          'images/rohith.jpeg'),
                                    ),
                                    Text('Rohith'),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: 30.0,
                                      backgroundImage: AssetImage(
                                          'images/appu.jpeg'),
                                    ),
                                    Text('Rahul'),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: 30.0,
                                      backgroundImage: AssetImage(
                                          'images/J.jpg'),
                                    ),
                                    Text('Jason'),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: 30.0,
                                      backgroundImage: AssetImage(
                                          'images/cany.jpg'),
                                    ),
                                    Text('Canyamon'),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),


                Container(
                  width: 420.0,
                  height: 200.0,
                  child: Card(
                    color: Colors.white60,
                    margin: EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 25.0),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Online Multiplayer',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                ),
                              ),
                              Icon(
                                  Icons.arrow_forward
                              ),
                            ],
                          ),

                          Column(
                            children: <Widget>[
                              Divider(
                                color: Colors.black,
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 40.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .spaceEvenly,
                              children: <Widget>[
                                Icon(
                                  Icons.phone_iphone,
                                  size: 50.0,

                                ),
                                Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.compare_arrows,
                                      size: 40.0,
                                    ),
                                    Text('vs'),
                                  ],
                                ),
                                Icon(
                                  Icons.phone_iphone,
                                  size: 50.0,
                                ),
                              ],
                            ),
                          ),

                        ],

                      ),


                    ),

                  ),
                ),

                Container(
                  width: 420.0,
                  height: 200.0,
                  child: Card(
                    color: Colors.white60,
                    margin: EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 25.0),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Play with School Mates',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                ),
                              ),
                              Icon(
                                  Icons.arrow_forward
                              ),

                            ],
                          ),

                          Column(
                            children: <Widget>[
                              Divider(
                                color: Colors.black,
                              ),
                            ],
                          ),


//                          Padding(
//                            padding: const EdgeInsets.only(left: 100.0),
//                            child: Icon(
//                                Icons.arrow_forward
//                            ),
//
//                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .spaceEvenly,
                              children: <Widget>[
                                Icon(
                                  Icons.account_circle,
                                  size: 40.0,

                                ),
                                Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.compare_arrows,
                                      size: 40.0,
                                    ),
                                    Text('vs'),
                                  ],
                                ),
                                Icon(
                                  Icons.school,
                                  size: 40.0,
                                ),
                              ],
                            ),
                          ),

                        ],

                      ),


                    ),

                  ),
                ),

                Container(
                  width: 420.0,
                  height: 200.0,
                  child: Card(

                    color: Colors.white60,
                    margin: EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 25.0),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 120.0),
                            child: Text(
                              'Your Clan',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 70.0),
                                child: Text(
                                  'Clan Trophy:1000',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),

                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 70.0),
                                child: Text(
                                  'Your Position:100',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
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
              'Single Player',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.white,
              ),
            ),
            textColor: Colors.white,
            color: Colors.green,
            onPressed: () {
              Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new SecondPage()),
              );

//        _navigateToSecondPage(context);
            },

          ),
        ),
      ),
    );
  }
}