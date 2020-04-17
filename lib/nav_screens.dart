import 'package:flutter/material.dart';
import 'package:top_rated_shows/component/bottom_bar.dart';
import 'package:top_rated_shows/component/detail_screen_component.dart';
import 'package:top_rated_shows/home_screen.dart';

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
        return HomeScreen();
      case 1:
        return Scaffold(
            body: DetailsScreen(
          imgLink:
              'https://m.media-amazon.com/images/M/MV5BNDE4OTMxMTctNmRhYy00NWE2LTg3YzItYTk3M2UwOTU5Njg4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX45_CR0,0,45,67_AL_.jpg',
          name: 'The Shawshank Redemption',
          date: '1994',
          rank: '1',
          rating: '9.2',
          description:
              'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
          trailerLink: '',
        ));
      case 2:
        return HomeScreen();
      case 3:
        return HomeScreen();
      default:
        return Container();
    }
  }
}
