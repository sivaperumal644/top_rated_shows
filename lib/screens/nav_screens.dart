import 'package:flutter/material.dart';
import 'package:top_rated_shows/component/bottom_bar.dart';
import 'package:top_rated_shows/component/detail_screen_component.dart';
import 'package:top_rated_shows/home_screen.dart';
import 'package:top_rated_shows/screens/about_app_screen.dart';
import 'package:top_rated_shows/screens/chat_screen/chat_screen.dart';
import 'package:top_rated_shows/screens/movies_screen/movies_screen.dart';
import 'package:top_rated_shows/screens/tvshows_screen/tvshow_screen.dart';

class NavigateScreens extends StatefulWidget {
  final int selectedIndex;

  const NavigateScreens({this.selectedIndex = 0});
  @override
  _NavigateScreensState createState() => _NavigateScreensState();
}

class _NavigateScreensState extends State<NavigateScreens> {
  int selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    selectedIndex = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: layout(),
      bottomNavigationBar: BottomBar(
        index: selectedIndex,
        icons: [
          Icons.movie,
          Icons.live_tv,
          Icons.chat,
          Icons.info,
        ],
        titleList: [
          'Movies',
          'TV Shows',
          'Chat',
          'About App',
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }

  Widget layout() {
    switch (selectedIndex) {
      case 0:
        return MoviesScreen();
      case 1:
        return TVShowScreen();
      case 2:
        return ChatScreen();
      case 3:
        return AboutAppScreen();
      default:
        return Container();
    }
  }
}
