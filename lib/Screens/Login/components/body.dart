import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mentorup_app/Screens/Login/components/background.dart';
import 'package:mentorup_app/Screens/Signup/signup_screen.dart';
import 'package:mentorup_app/components/already_have_an_account_acheck.dart';
import 'package:mentorup_app/components/rounded_button.dart';
import 'package:mentorup_app/components/rounded_input_field.dart';
import 'package:mentorup_app/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mentorup_app/constants.dart';
import 'package:mentorup_app/Screens/Login/login_as_funder.dart';
import 'package:mentorup_app/Screens/Login/login_as_mentor.dart';
import 'package:mentorup_app/Screens/Login/login_as_student.dart';
import 'package:mentorup_app/Screens/Login/login_as_admin.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN AS ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 24,
                  color: kPrimaryColor),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.07),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Login_as_student();
                            },
                          ),
                        );
                      },
                      elevation: 4.0,
                      shape: CircleBorder(),
                      clipBehavior: Clip.hardEdge,
                      color: Color(0xFFF1E6FF),
                      child: Ink.image(
                        image: AssetImage("assets/images/student.png"),
                        fit: BoxFit.cover,
                        width: 50.0,
                        height: 50.0,
                        // child: InkWell(
                        //   onTap: () {},
                        // ),
                      ),
                    ),
                    Text(
                      "Student",
                      style: TextStyle(
                          color: Color(0xFF6F35A5),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Login_as_mentor();
                            },
                          ),
                        );
                      },
                      elevation: 4.0,
                      shape: CircleBorder(),
                      clipBehavior: Clip.hardEdge,
                      color: Color(0xFFF1E6FF),
                      child: Ink.image(
                        image: AssetImage("assets/images/mentor.png"),
                        fit: BoxFit.cover,
                        width: 50.0,
                        height: 50.0,
                        // child: InkWell(
                        //   onTap: () {},
                        // ),
                      ),
                    ),
                    Text(
                      "Mentor",
                      style: TextStyle(
                          color: Color(0xFF6F35A5),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Login_as_funder();
                            },
                          ),
                        );
                      },
                      elevation: 4.0,
                      shape: CircleBorder(),
                      clipBehavior: Clip.hardEdge,
                      color: Color(0xFFF1E6FF),
                      child: Ink.image(
                        image: AssetImage("assets/images/funder.png"),
                        fit: BoxFit.cover,
                        width: 50.0,
                        height: 50.0,
                        // child: InkWell(
                        //   onTap: () {},
                        // ),
                      ),
                    ),
                    Text(
                      "Funder",
                      style: TextStyle(
                          color: Color(0xFF6F35A5),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Login_as_admin();
                            },
                          ),
                        );
                      },
                      elevation: 4.0,
                      shape: CircleBorder(),
                      clipBehavior: Clip.hardEdge,
                      color: Color(0xFFF1E6FF),
                      child: Ink.image(
                        image: AssetImage("assets/images/admin.png"),
                        fit: BoxFit.cover,
                        width: 50.0,
                        height: 50.0,
                        // child: InkWell(
                        //   onTap: () {},
                        // ),
                      ),
                    ),
                    Text(
                      "Admin",
                      style: TextStyle(
                          color: Color(0xFF6F35A5),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
            // SizedBox(
            //   height: 20.0,
            // ),
            SizedBox(
              height: size.height * 0.06,
            ),
            AlreadyHaveAnAccountCheck(
              login: true,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
