import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ResponsiveLayout.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

List<Widget> social = [
  IconButton(
    icon: Icon(FontAwesomeIcons.github),
    iconSize: 30,
    color: Colors.white,
    onPressed: () {launch('https://github.com/hirdan');},
  ),
  IconButton(
    icon: Icon(FontAwesomeIcons.linkedinIn),
    iconSize: 30,
    color: Colors.white,
    onPressed: ()
    {
      launch('https://www.linkedin.com/in/hirdanaggarwal/');
    },
  ),
  /*IconButton(
    icon: Icon(FontAwesomeIcons.instagram),
    iconSize: 30,
    color: Colors.white,
    onPressed: () => {launch('https://www.instagram.com/i.m.shubhamkr/')},
  ),
  IconButton(
    icon: Icon(FontAwesomeIcons.facebookF),
    iconSize: 30,
    color: Colors.white,
    onPressed: () =>
    {
      launch('https://www.facebook.com/shubham.kumar.8180323')
    },
  ),*/
  IconButton(
    icon: Icon(FontAwesomeIcons.envelope),
    iconSize: 30,
    color: Colors.white,
    onPressed: ()  {launch('mailto:aggarwalhirdan@gmail.com');},
  ),
];
/*
List<Widget> comp = [
  GestureDetector(
    onTap: () => {launch('https://codechef.com/users/shubhamkumar27')},
    child: Column(
      children: <Widget>[
        CircleAvatar(
        radius: 25,
        backgroundColor: Colors.white,
        child: Image(image:AssetImage('assets/codechef.png'),width: 40,),
        ),
        SizedBox(height: 5,),
        Text('Codechef' , style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
      ],
    ),
  ),
  SizedBox(width: 20,),
  GestureDetector(
    onTap: () => {launch('https://hackerrank.com/shubhamkumar27')},
    child: Column(
      children: <Widget>[
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.white,
          child: Image(image:AssetImage('assets/hackerrank.png'),width: 40,),
        ),
        SizedBox(height: 5,),
        Text('HackerRank', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
      ],
    ),
  ),
  SizedBox(width: 20,),
  GestureDetector(
    onTap: () => {launch('https://leetcode.com/shubhamkumar27')},
    child: Column(
      children: <Widget>[
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.white,
          child: Image(image:AssetImage('assets/leetcode.png'),width: 40,),
        ),
        SizedBox(height: 5,),
        Text('Leetcode', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)
      ],
    ),
  ),
];
*/

class Landingpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    if (ResponsiveLayout.isSmallScreen(context)) {
      return mobilehome();
    } else {
      return webhome();
    }
  }
}

class webhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 40,),
              Text("Hi !   I am", style: TextStyle(color: Colors.blueAccent, fontSize: 35, fontWeight: FontWeight.bold),),
//              SizedBox(height: 5,),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan( text: "Hirdan Aggarwal", style: GoogleFonts.exo2(color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold,),),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Text("Application Developer | Python Programmer", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 10),),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: social,
              ),
              SizedBox(height: 20,),
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    width: MediaQuery.of(context).size.width*0.4,
                    child: RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan( text: "An ambitious person with great urge to conquer the goals set up by me even if I have to start from back to square. Flutter Developer aiming to solve real life problems using technology. Skilled in Mobile Applications, Cross-Platform (Flutter), Android, WebApps, Dart, Python, NLP, Ability to Google, Leadership and Goal Oriented. Pursuing Bachelor of Technology (B.Tech) focused in Information Technology Engineering from Guru Tegh Bahadur Institute of Technology, Delhi.",
                        style: GoogleFonts.lato(color: Colors.white, fontSize: MediaQuery.of(context).size.width*0.016, ),),
                    ),
                  ),
                  Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Text("Skills..!!", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Text("Flutter(Android/iOS/WebApp)", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Text("Python", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Text("Data Structures and Algorithms", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Text("NLP", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Text("Kotlin", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
              ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                //child: Row(
                  //children: comp,
                //),
              ),
            ],
          ),)
      ],
    );
  }
}

class mobilehome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30,left: 10, right: 10),
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
              child: Column(

          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                      color: Colors.blueAccent,
                      blurRadius: MediaQuery.of(context).size.width*0.2
                  )],
                  borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*0.1 + 2),
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.height*0.1,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('image/Profile.jpg'),
                )),
            SizedBox(height: 20,),
            Text("Hi !   I am", style: TextStyle(color: Colors.blueAccent, fontSize: MediaQuery.of(context).size.height*0.03, fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan( text: "Hirdan Aggarwal", style: GoogleFonts.exo2(color: Colors.white, fontSize: max(MediaQuery.of(context).size.height*0.043,MediaQuery.of(context).size.width*0.05), fontWeight: FontWeight.bold,),),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Text("Application Developer | Python Programmer", style: TextStyle(color: Colors.white, fontSize: 10),),
            ),
            SizedBox(height: 5,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: social,
            ),
            SizedBox(height: 15,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,),
              child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan( text: "An ambitious person with great urge to conquer the goals set up by me even if I have to start from back to square. Flutter Developer aiming to solve real life problems using technology. Skilled in Mobile Applications, Cross-Platform (Flutter), Android, WebApps, Dart, Python, NLP, Ability to Google, Leadership and Goal Oriented. Pursuing Bachelor of Technology (B.Tech) focused in Information Technology Engineering from Guru Tegh Bahadur Institute of Technology, Delhi.",
                  style: TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.height*0.025, ),),
              ),
            ),
             Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Text("Skills..!!", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Text("Flutter(Android/iOS/WebApp)", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Text("Python", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Text("Data Structures and Algorithms", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Text("NLP", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Text("Kotlin", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                ),
          ],
        ),
      ),
    );
  }
}
