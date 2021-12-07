import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentorup_app/Screens/Welcome/welcome_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mentorup_app/Screens/Home%20Page/components/home_screen.dart';

class Newsfeed extends StatefulWidget {
  @override
  _NewsfeedState createState() => _NewsfeedState();
}

class _NewsfeedState extends State<Newsfeed> {
  Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 12,
          backgroundColor: Color(0xFF512DA8),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Color(0xFFF1E6FF)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen();
                  },
                ),
              );
            },
          ),
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
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),
                FlatButton(
                  onPressed: () {
                    launch(
                        'https://timesofindia.indiatimes.com/city/visakhapatnam/19-women-led-startups-in-incubation-at-iim-v/articleshow/81608502.cms');
                  },
                  child: news(
                      '19 Women-led startups in incubation at IIM-Visakhapatnam',
                      'The Times Of India',
                      '21-03-2021',
                      'lady.jpg.jpeg'),
                ),
                FlatButton(
                  onPressed: () {
                    launch(
                        'https://timesofindia.indiatimes.com/business/india-business/startups-tap-new-investors-amid-uncertainty-on-china-fdi/articleshow/81322710.cms');
                  },
                  child: news('Startups tap new investors amid on China FDI',
                      'The Times Of India', '4-03-2021', 'notes.jpg.jpeg'),
                ),
                FlatButton(
                  onPressed: () {
                    launch(
                        'https://timesofindia.indiatimes.com/city/guwahati/young-techie-wows-guwahati-with-start-up-on-drones/articleshow/81044379.cms');
                  },
                  child: news(
                      'Young techie wows Guwahati with start-up on drones',
                      'The Times Of India',
                      '17-02-2021',
                      'drone.jpeg'),
                ),
                FlatButton(
                  onPressed: () {
                    launch('http://toi.in/GwrfFb/');
                  },
                  child: news(
                      'Gujrat startups to solve problems of toy manufactures',
                      'The Times Of India',
                      '10-02-2021',
                      'gujrat_startup.jpeg'),
                ),
                FlatButton(
                  onPressed: () {
                    launch('http://toi.in/oc7h8b/');
                  },
                  child: news(
                      'Startups will play crucial role in defence sector, says Rajnath Singh',
                      'The Times Of India',
                      '06-02-2021',
                      'dm.jpeg'),
                ),
                FlatButton(
                  onPressed: () {
                    launch(
                        'https://timesofindia.indiatimes.com/trend-tracking/union-budget-govt-allocates-rs-830-cr-for-fund-of-funds-for-startups/articleshow/80632756.cms');
                  },
                  child: news(
                      'Union Budget:Govt allocates Rs 830 cr for Fund of Funds Startups',
                      'The Times Of India',
                      '01-02-2021',
                      'fm.jpg.jpeg'),
                ),
                FlatButton(
                  onPressed: () {
                    launch('http://toi.in/D5n4Bb/');
                  },
                  child: news(
                      'India home to 21 unicorns valued at \$73.2 billion:Taranjit Singh Sandhu',
                      'The Times Of India',
                      '06-01-2021',
                      'Singh.jpeg'),
                ),
                FlatButton(
                  onPressed: () {
                    launch('http://toi.in/Qvm69a/');
                  },
                  child: news(
                      'PM announces Rs 1,000-crore \'Startup India Seed Fund\'',
                      'The Times Of India',
                      '16-01-2021',
                      'pm.jpg.jpeg'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget news(String headline, String source, String date, String image) {
    return Card(
      elevation: 12.0,
      margin: EdgeInsets.only(bottom: 20.0),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              width: size.width * 0.2,
              height: 80.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/$image'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$headline',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 5.0,
                      ),
                      Icon(
                        Icons.chrome_reader_mode,
                        size: 20.0,
                      ),
                      Text(
                        '$source',
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Icon(Icons.date_range),
                      Text(
                        '$date',
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
