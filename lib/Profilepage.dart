import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Experience.dart';
import 'Projects.dart';
import 'Menu.dart';
import 'ResponsiveLayout.dart';
import 'About.dart';


class Profilepage extends StatefulWidget {
  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  int index = 0;

  List _pages = [
    Landingpage(),
    Experience(),
    Projects(),
  ];

  pageCaller(value){
    setState(() {
      index = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Color.fromRGBO(25, 25, 25, 1),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                width: ResponsiveLayout.isSmallScreen(context) ?
                MediaQuery.of(context).size.width*0.15 :
                MediaQuery.of(context).size.width*0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30), bottomRight: Radius.circular(30)),
                  color: Colors.black,
                    boxShadow: [BoxShadow(
                        color: Colors.blue,
                        blurRadius: ResponsiveLayout.isSmallScreen(context) ? MediaQuery.of(context).size.width*0.07 : MediaQuery.of(context).size.width*0.02,
                    )]
                ),
                child: Menu(pageCaller: pageCaller,),
              ),
              Expanded(
                child: _pages[index],
              )
            ],
          )
      ),
    );
  }
}

