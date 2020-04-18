import 'package:flutter/material.dart';
import 'package:top_rated_shows/component/search_and_chat_container.dart';
import 'package:top_rated_shows/constants/colors.dart';

class CustomAppBar extends StatelessWidget {
  final bool isMovies;
  final ValueChanged<String> onChanged;

  const CustomAppBar({
    this.isMovies,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(
              color: PRIMARY_COLOR.withOpacity(0.45),
              offset: Offset(0.0, 2),
              blurRadius: 4.0)
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(height: 20),
          Text(
            isMovies ? 'Movies' : 'TV Shows',
            style: TextStyle(
              fontSize: 24,
              color: PRIMARY_COLOR,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(height: 2),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: isMovies
                      ? "Top Rated movies from "
                      : "Top Rated tv shows from ",
                  style: TextStyle(
                    fontSize: 16,
                    color: PRIMARY_COLOR.withOpacity(0.6),
                  ),
                ),
                TextSpan(
                  text: 'IMDb',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: PRIMARY_COLOR.withOpacity(0.6),
                  ),
                ),
              ],
            ),
          ),
          Container(height: 24),
          SearchAndChatContainer(
            hint: isMovies ? 'search for Movies' : 'search for TV Shows',
            onChanged: (val) {},
          ),
        ],
      ),
    );
  }
}
