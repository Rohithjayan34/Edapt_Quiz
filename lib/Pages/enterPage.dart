
import 'package:Quizzup/Pages/firstPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EnterScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 115.0),
                child: SvgPicture.asset(
                  "images/edapt_newlogo.svg",
                  color: Colors.black,
                  height: 100,
                  width: 100,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "edapt",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontFamily: 'Raleway',
                    fontSize: 33),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Container(
                  height: 50,
                  width: 120,
                  color: Colors.blue,
                  child: OutlineButton(

                    onPressed: () {
                      Navigator.push(context,
                        new MaterialPageRoute(
                            builder: (context) => new FirstScreen()),
                      );
                    },
                    child: Text("START"),
                    textColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }}