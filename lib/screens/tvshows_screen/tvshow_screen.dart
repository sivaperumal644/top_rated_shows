import 'package:flutter/material.dart';
import 'package:top_rated_shows/component/custom_app_bar.dart';

class TVShowScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          CustomAppBar(
            isMovies: false,
            onChanged: (val) {},
          )
        ],
      ),
    );
  }
}
