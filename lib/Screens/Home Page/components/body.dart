import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:mentorup_app/Screens/Blogs/Blogs.dart';
import 'package:mentorup_app/Screens/Chat%20Page/chat_screen.dart';
import 'package:mentorup_app/Screens/Domain/DomainMainPage.dart';
import 'package:mentorup_app/Screens/Forums/forum_screen.dart';
import 'package:mentorup_app/Screens/Funder%20Page/funder_screen.dart';
import 'package:mentorup_app/Screens/Funder\'s%20Desk/funder_desk_screen.dart';
import 'package:mentorup_app/Screens/Home%20Page/components/home_screen.dart';
import 'package:mentorup_app/Screens/Mentor%20Page/mentor_screen.dart';
import 'package:mentorup_app/Screens/Newsfeed/News.dart';
import 'package:mentorup_app/Screens/Welcome/welcome_screen.dart';
import 'package:mentorup_app/Screens/Webinar/webinar.dart';
import 'package:mentorup_app/Screens/Mentor\'s Desk/mentor_desk_screen.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Color(0xFF512DA8),
        title: Center(
          child: Text(
            'MentorUp',
            style: TextStyle(
              fontFamily: 'SirinStencil',
              fontSize: 32.0,
              color: Color(0xFFF1E6FF),
            ),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 7),
            child: IconButton(
              icon: Icon(Icons.person_add, color: Color(0xFFF1E6FF)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WelcomeScreen();
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        elevation: 20,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xFF512DA8), Color(0xFF6F35A5)],
            ),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 50),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/images/logo3.png",
                    height: 150,
                    width: 120,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DomainMainPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Domains',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return MentorScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Mentors',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return FunderScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Funders',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ArticlePage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Webinars',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return BlogsMainPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Blogs',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Newsfeed();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'NewsFeed',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return MentorDeskScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Mentor\'s Desk',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ChatScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'ChatPage',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return WelcomeScreen();
                          },
                        ),
                      );
                    },
                    child: Icon(
                      Icons.exit_to_app,
                      color: Colors.white,
                      size: 48.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          //color: Color(0xFFF1E6FF),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DomainMainPage();
                            },
                          ),
                        );
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white70, width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 2,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Image.asset(
                                "assets/images/domain1.png",
                                height: 120,
                                width: 120,
                              ),
                            ),
                            Text(
                              "Domain",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return MentorScreen();
                            },
                          ),
                        );
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white70, width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 2,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Image.asset(
                                "assets/images/mentor1.png",
                                height: 120,
                                width: 120,
                              ),
                            ),
                            Text(
                              "Mentor",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return FunderScreen();
                          },
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white70, width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 2,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(15),
                            child: Image.asset(
                              "assets/images/funder.png",
                              height: 120,
                              width: 120,
                            ),
                          ),
                          Text(
                            "Funder",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ForumScreen();
                          },
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white70, width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 2,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(15),
                            child: Image.asset(
                              "assets/images/forums.png",
                              height: 120,
                              width: 120,
                            ),
                          ),
                          Text(
                            "Forums",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Color(0xFFEEEEEE),
                height: 30,
                thickness: 10,
              ),
              Text(
                "Latest News",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    fontSize: 20),
              ),
              Divider(
                height: 10,
                color: Color(0xFF6F35A5),
                endIndent: 130,
                indent: 130,
                thickness: 3,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    NewsFeed(
                        "Decoding Patym 'Blockbuster Loss...'",
                        "Vjay Shekar Sharma led Patym has a spec... ",
                        'March 29, 2021'),
                    NewsFeed(
                        "Decoding Patym 'Blockbuster Loss...'",
                        "Vjay Shekar Sharma led Patym has a spec... ",
                        'March 29, 2021'),
                    NewsFeed(
                        "Decoding Patym 'Blockbuster Loss...'",
                        "Vjay Shekar Sharma led Patym has a spec... ",
                        'March 29, 2021'),
                    NewsFeed(
                        "Decoding Patym 'Blockbuster Loss...'",
                        "Vjay Shekar Sharma led Patym has a spec... ",
                        'March 29, 2021'),
                    NewsFeed(
                        "Decoding Patym 'Blockbuster Loss...'",
                        "Vjay Shekar Sharma led Patym has a spec... ",
                        'March 29, 2021'),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Color(0xFFEEEEEE),
                height: 30,
                thickness: 10,
              ),
              Text(
                "Webinars",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    fontSize: 20),
              ),
              Divider(
                height: 10,
                color: Color(0xFF6F35A5),
                endIndent: 145,
                indent: 145,
                thickness: 3,
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Webinars('webinars1.jpg', ' Machine learning',
                          'A webinar for learning machine learning from scratch'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Webinars('webinars1.jpg', ' Machine learning',
                          'A webinar for learning machine learning from scratch'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Webinars('webinars1.jpg', ' Machine learning',
                          'A webinar for learning machine learning from scratch'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Webinars('webinars1.jpg', ' Machine learning',
                          'A webinar for learning machine learning from scratch'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Webinars('webinars1.jpg', ' Machine learning',
                          'A webinar for learning machine learning from scratch'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Divider(
                color: Color(0xFFEEEEEE),
                height: 30,
                thickness: 10,
              ),
              Text(
                "Blogs",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    fontSize: 20),
              ),
              Divider(
                height: 10,
                color: Color(0xFF6F35A5),
                endIndent: 161,
                indent: 161,
                thickness: 3,
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FlatButton(
                      onPressed: () {},
                      child: Blogs(
                          "5 ways blochchain marketing helps small business",
                          'Blogs.png',
                          'March 31, 2021'),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Blogs(
                          "5 ways blochchain marketing helps small business",
                          'Blogs.png',
                          'March 31, 2021'),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Blogs(
                          "5 ways blochchain marketing helps small business",
                          'Blogs.png',
                          'March 31, 2021'),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Blogs(
                          "5 ways blochchain marketing helps small business",
                          'Blogs.png',
                          'March 31, 2021'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
                width: size.width,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget NewsFeed(
      String NewsHeadline, String NewsDescription, String NewsDate) {
    return Container(
      //color: Color(0xFFEEEEEE),
      height: size.height * 0.35,
      width: size.width / 2,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: GestureDetector(
          onTap: () {},
          child: Card(
            elevation: 10,
            shadowColor: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "$NewsHeadline",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "$NewsDescription",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Divider(
                  color: Color(0xFFEEEEEE),
                  thickness: 3,
                ),
                SizedBox(
                  height: 6,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "$NewsDate",
                    style: TextStyle(
                      color: Color(0xFF6F35A5),
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Webinars(
      String WebinarImage, String WebinarName, String Webinardescription) {
    return Container(
      width: size.width * 0.45,
      height: size.height * 0.32,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage('assets/images/$WebinarImage'),
            fit: BoxFit.cover,
          )),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(begin: Alignment.bottomCenter, stops: [
              .2,
              .9
            ], colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.7),
            ])),
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: size.height * 0.125),
                      child: Text(
                        "$WebinarName",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 7),
                    child: Text(
                      "$Webinardescription",
                      style: TextStyle(color: Colors.white60, fontSize: 15),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget Blogs(String Blogname, String BlogImage, String BlogDate) {
    return Container(
      height: size.height * 0.36,
      width: size.width / 2,
      child: Card(
          elevation: 10,
          margin: EdgeInsets.all(1),
          child: Column(
            children: [
              Container(
                width: size.width,
                height: 130,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/$BlogImage'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 9),
                child: Text(
                  '$Blogname',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Color(0xFFEEEEEE),
                thickness: 3,
              ),
              SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  '$BlogDate',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6F35A5),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          )),
    );
  }
}
