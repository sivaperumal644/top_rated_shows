import 'package:flutter/material.dart';
import 'package:top_rated_shows/component/search_and_chat_container.dart';
import 'package:top_rated_shows/constants/colors.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          customAppBar(context),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 12),
                  height: 1,
                  color: PRIMARY_COLOR.withOpacity(0.3),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  child: SearchAndChatContainer(
                    hint: 'Type a message',
                    isSearchBar: false,
                    onChanged: (val) {},
                    onPressed: () {},
                  ),
                ),
                Container(height: 16)
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget customAppBar(BuildContext context) {
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
    child: Column(
      children: <Widget>[
        Text(
          'Chat',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: PRIMARY_COLOR,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 12),
          width: MediaQuery.of(context).size.width / 1.7,
          child: Text(
            'You can chat about the latest movies or tvshows you have recently watched',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: PRIMARY_COLOR,
            ),
          ),
        ),
      ],
    ),
  );
}
