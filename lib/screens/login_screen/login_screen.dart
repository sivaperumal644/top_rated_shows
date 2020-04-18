import 'package:flutter/material.dart';
import 'package:top_rated_shows/component/custom_text_field.dart';
import 'package:top_rated_shows/component/primary_button.dart';
import 'package:top_rated_shows/component/secondary_button.dart';
import 'package:top_rated_shows/constants/colors.dart';
import 'package:top_rated_shows/screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:top_rated_shows/screens/nav_screens.dart';
import 'package:top_rated_shows/screens/signup_screen/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          customAppBar(context),
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: <Widget>[
                      Container(height: 16),
                      Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 36,
                          color: PRIMARY_COLOR,
                        ),
                      ),
                      Container(height: 24),
                      CustomTextField(
                        hintText: 'Phone Number',
                        maxLength: 10,
                        keyboardType: TextInputType.phone,
                        onChanged: (val) {},
                      ),
                      Container(height: 24),
                      CustomTextField(
                        hintText: 'Password',
                        obscureText: true,
                        onChanged: (val) {},
                      ),
                      Container(height: 24),
                      PrimaryButton(
                        buttonText: 'Login',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  NavigateScreens(selectedIndex: 0),
                            ),
                          );
                        },
                      ),
                      Container(height: 16),
                      forgotPasswordButton(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPasswordScreen(),
                          ),
                        );
                      }),
                      Container(height: 16),
                      SecondaryButton(
                        buttonText: 'Sign up',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          );
                        },
                      ),
                      Container(
                        height: 44,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget forgotPasswordButton(Function onPressed) {
    return Container(
      width: double.infinity,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        onPressed: onPressed,
        child: Text(
          'Forgot Password?',
          style: TextStyle(
            color: PRIMARY_COLOR.withOpacity(0.8),
            fontSize: 19,
          ),
        ),
      ),
    );
  }

  Widget customAppBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(24, 42, 24, 24),
      decoration: BoxDecoration(
        color: PRIMARY_COLOR,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: Column(
        children: <Widget>[
          nameAndLogoWidget(context),
          Container(height: 16),
          Text(
            'Top Rated Movies and  TV Shows from',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          Text(
            'IMDb',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  Widget nameAndLogoWidget(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 12),
          child: Image.asset(
            'assets/images/app_logo.png',
            height: 125,
            width: 133,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 2,
          child: Text(
            'Top Rated Shows',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
            ),
          ),
        ),
      ],
    );
  }
}
