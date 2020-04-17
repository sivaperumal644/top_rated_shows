import 'package:flutter/material.dart';
import 'package:top_rated_shows/component/secondary_button.dart';
import 'package:top_rated_shows/constants/colors.dart';

class AboutAppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          customAppBar(),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                Container(height: 16),
                Align(
                  child: Image.asset(
                    'assets/images/app_logo.png',
                    fit: BoxFit.fill,
                    height: 200,
                    width: 210,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Text(
                    'Top Rated Shows',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(height: 24),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'Top Rated Movies and  TV Shows from',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
                Container(height: 3),
                Image.asset(
                  'assets/images/imdb_logo.png',
                  width: 75,
                  height: 30,
                ),
                Container(height: 24),
                Text(
                  'Developed By',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
                Container(height: 8),
                Text(
                  'Siva Perumal K',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(height: 16),
                flutterTextMessage(),
                Container(height: 20),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  child: SecondaryButton(
                    buttonText: 'Log out',
                    onPressed: () {},
                  ),
                ),
                Container(height: 32)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget flutterTextMessage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset('assets/images/flutter_logo.png'),
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: ' Made with',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),
              ),
              TextSpan(
                text: ' Flutter ',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 22,
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget customAppBar() {
    return Container(
      padding: EdgeInsets.only(top: 42, bottom: 18),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(
            color: PRIMARY_COLOR.withOpacity(0.5),
            blurRadius: 6,
            offset: Offset(0.0, 1.5),
          ),
        ],
      ),
      child: Text(
        'About App',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: PRIMARY_COLOR,
        ),
      ),
    );
  }
}
