

import 'package:Quizzup/Pages/eleventhPage.dart';
import 'package:getflutter/getflutter.dart';
import 'package:flutter/material.dart';


class TenthPage extends StatelessWidget {


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
                                Text(
                                  'Create Room',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 60.0),
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
                                      backgroundImage: AssetImage(
                                          'images/c.jpeg'),
                                      shape: GFAvatarShape.standard
                                  ),
                                ),

//                              Text('Nature'),


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

                                              Icon(Icons.directions_transit),
                                              Center(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment
                                                      .center,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: const EdgeInsets.only(top:140.0),
                                                      child: Text(
                                                        'Enter the Room Code',
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                                    ),

                                                    Padding(
                                                      padding: const EdgeInsets.all(25.0),
                                                      child: Container(
                                                        height: 40,
                                                        width: 230,
                                                        child: TextFormField(

                                                          decoration: new InputDecoration(
                                                            hintText: 'Type here',

                                                            fillColor: Colors.white,
                                                            border: new OutlineInputBorder(
                                                              borderRadius: new BorderRadius.circular(10.0),
                                                              borderSide: new BorderSide(
                                                              ),

                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),


                                                  ],
                                                ),
                                              ),

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
                    'Join',
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
                          builder: (context) => new EleventhPage()),
                    );
                  }
              ),
            ),
          ),
        ),
      ),

    );
  }}