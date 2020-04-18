import 'package:flutter/material.dart';
import 'package:top_rated_shows/component/custom_text_field.dart';
import 'package:top_rated_shows/component/primary_button.dart';
import 'package:top_rated_shows/constants/colors.dart';
import 'package:top_rated_shows/screens/login_screen/login_screen.dart';

class OTPScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(24, 40, 24, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: BackButton(),
            ),
            Container(height: 12),
            Text(
              'Enter OTP',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                color: PRIMARY_COLOR,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(height: 12),
            Text(
              'OTP Sent to your new number. Please enter the OTP to continue.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            Container(height: 24),
            CustomTextField(
              hintText: 'OTP',
              onChanged: (val) {},
              keyboardType: TextInputType.number,
            ),
            Container(height: 24),
            PrimaryButton(
              buttonText: 'Verify',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
