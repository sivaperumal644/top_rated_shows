import 'package:flutter/material.dart';
import 'package:top_rated_shows/component/custom_text_field.dart';
import 'package:top_rated_shows/component/primary_button.dart';
import 'package:top_rated_shows/constants/colors.dart';
import 'package:top_rated_shows/screens/otp.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(24, 12, 24, 0),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: BackButton(),
                ),
                Container(height: 12),
                Image.asset(
                  'assets/images/app_logo.png',
                  width: 135,
                  height: 125,
                ),
                Container(height: 24),
                Text(
                  'Change Password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: PRIMARY_COLOR,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Container(height: 12),
                Text(
                  'Enter your phone number and name of your account correctly and then enter your new password',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                Container(height: 32),
                CustomTextField(
                  hintText: 'Phone Number',
                  maxLength: 10,
                  keyboardType: TextInputType.phone,
                  onChanged: (val) {},
                ),
                Container(height: 24),
                CustomTextField(
                  hintText: 'Name',
                  onChanged: (val) {},
                ),
                Container(height: 24),
                CustomTextField(
                  hintText: 'Password',
                  obscureText: true,
                  onChanged: (val) {},
                ),
                Container(height: 24),
                CustomTextField(
                  hintText: 'Confirm Password',
                  obscureText: true,
                  onChanged: (val) {},
                ),
                Container(height: 28),
                PrimaryButton(
                  buttonText: 'Change Password',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OTPScreen(),
                      ),
                    );
                  },
                ),
                Container(height: 32)
              ],
            ),
          )
        ],
      ),
    );
  }
}
