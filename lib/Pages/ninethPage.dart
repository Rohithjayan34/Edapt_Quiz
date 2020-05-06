

import 'package:Quizzup/Pages/tenthPage.dart';
import 'package:getflutter/getflutter.dart';
import 'package:flutter/material.dart';

class NinethPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          body:SingleChildScrollView(
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
                                Text(
                                  'Create Room',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top:40.0),
                                  child: Text(
                                    'Topic',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GFAvatar(
                                      size: 55.0,
                                      backgroundImage:AssetImage('images/c.jpeg'),
                                      shape: GFAvatarShape.standard
                                  ),
                                ),

                                Text('Nature'),



                                Center(
                                  child: Container(
                                    height: 400,
                                    width: 350,
                                    child: Column(
                                      children: <Widget>[
                                        TabBar(
                                          labelColor: Colors.black,
                                          indicatorColor: Colors.black,
                                          tabs: [
                                            Tab(text: 'Create Room',),
                                            Tab(text: 'Join',),

                                          ],
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: TabBarView(
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.only(top:50.0,bottom: 40,left: 30),
                                                    child: Text('Select room Capacity'),
                                                  ),

                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: <Widget>[
                                                      Padding(
                                                        padding: const EdgeInsets.all(10.0),
                                                        child: Container(

                                                          color: Color (0xffA8FBF9),
                                                          height: 70,
                                                          width: 80,
                                                          child: RaisedButton(
                                                            child: Text('3p',
                                                              style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight: FontWeight.bold,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.all(20.0),
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                            color: Color (0xffA5FFFF),
                                                            //  shape: BoxShape.rectangle,
                                                            borderRadius: BorderRadius.circular(
                                                                10),
                                                          ),

                                                          height: 70,
                                                          width: 80,
                                                          child: RaisedButton(
                                                            color: Color (0xffA5FFFF),
                                                            child: Text('4p',
                                                              style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight: FontWeight.bold,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.all(10.0),
                                                        child: Container(
                                                          color: Color (0xffA8FBF9),
                                                          height: 70,
                                                          width: 80,
                                                          child: RaisedButton(
                                                            child: Text('5p',
                                                              style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight: FontWeight.bold,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),

                                                  Padding(
                                                    padding: const EdgeInsets.only(top:30.0,left: 18),
                                                    child: Container(
                                                      color: Color (0xffA8FBF9),
                                                      height: 70,
                                                      width: 80,
                                                      child: RaisedButton(
                                                        child: Text('6p',
                                                          style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Icon(Icons.directions_transit),

                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
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
                    'Create Room',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                  ),
                  textColor: Colors.white,
                  color: Colors.green,
                  onPressed: () {
                    Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => new TenthPage()),
                    );
                  }
              ),
            ),
          ),

        ),),
    );
  }
}