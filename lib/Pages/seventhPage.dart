


import 'package:Quizzup/Pages/eigthPage.dart';
import 'package:flutter/material.dart';

class SeventhPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(

          body:SafeArea(
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
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top:26.0),
                        child: Text(
                          'Play With Friend',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:50.0),
                      child: TabBar(
                        labelColor: Colors.black,
                        indicatorColor: Colors.black,
                        tabs: [
                          Tab(text: 'Friends List'),
                          Tab(text: 'Facebook List'),
                          Tab(text: 'School Friends '),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TabBarView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:15.0,right:15.0,top: 30.0,bottom: 15.0),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                            'Rahul ',
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),

                                        ),
                                        Text('1',
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),

                                      ],
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(top:16,left: 135),
                                      height: 30.0,
                                      color: Colors.green,
                                      child: RaisedButton(
                                        child: Text(''
                                            'Play',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                          ),
                                        ),
                                        textColor: Colors.white,
                                        color: Colors.green,

                                      ),
                                    ),

                                  ],


                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Divider(
                                    color: Colors.black,
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left:5.0,right:5.0,top: 10.0,bottom: 5.0),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                                  'Jason',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),

                                              ),
                                              Text('1',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),

                                            ],
                                          ),

                                          Container(
                                            margin: EdgeInsets.only(top:16,left: 130),
                                            height: 30.0,
                                            color: Colors.green,
                                            child: RaisedButton(
                                              child: Text(''
                                                  'Play',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              textColor: Colors.white,
                                              color: Colors.green,

                                            ),
                                          ),

                                        ],


                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Divider(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),

                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:5.0,right:5.0,top: 10.0,bottom: 5.0),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          CircleAvatar(
                                            backgroundImage: AssetImage('images/cany.jpg'),
                                            radius: 30.0,
                                          ),

                                          Column(
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.all(5.0),
                                                child: Text(
                                                  'Cany',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),

                                              ),
                                              Text('1',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),

                                            ],
                                          ),

                                          Container(
                                            margin: EdgeInsets.only(top:16,left: 130),
                                            height: 30.0,
                                            color: Colors.green,
                                            child: RaisedButton(
                                              child: Text(''
                                                  'Play',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              textColor: Colors.white,
                                              color: Colors.green,

                                            ),
                                          ),

                                        ],


                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Divider(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),

                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:5.0,right:5.0,top: 10.0,bottom: 5.0),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                                  'Rohitl Jayan',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),

                                              ),
                                              Text('1',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),

                                            ],
                                          ),

                                          Container(
                                            margin: EdgeInsets.only(top:16,left: 110),
                                            height: 30.0,
                                            color: Colors.green,
                                            child: RaisedButton(
                                              child: Text(''
                                                  'Play',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              textColor: Colors.white,
                                              color: Colors.green,

                                            ),
                                          ),

                                        ],


                                      ),

                                    ],
                                  ),

                                ),


                              ],
                            ),

                          ),

                          Icon(Icons.directions_transit),
                          Icon(Icons.directions_bike),
                        ],
                      ),
                    )
                  ],
                ),
              )

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
                    'Random Selection',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                  ),
                  textColor: Colors.white,
                  color: Colors.green,
                  onPressed: () {
                    Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => new EighthPage()),
                    );
                  }
              ),
            ),
          ),
        ),

      ),
    );
  }}