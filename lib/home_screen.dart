import 'package:flutter/material.dart';
import 'package:top_rated_shows/component/search_and_chat_container.dart';
import 'component/custom_app_bar.dart';
import 'component/custom_text_field.dart';
import 'component/message_container.dart';
import 'component/movie_list_item.dart';
import 'component/primary_button.dart';
import 'component/secondary_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          CustomAppBar(
            isMovies: false,
            onChanged: (val) {},
          ),
          Container(
            padding: EdgeInsets.all(24),
            child: Column(
              children: <Widget>[
                Container(height: 16),
                CustomTextField(hintText: 'Phone Number'),
                Container(height: 16),
                PrimaryButton(
                  buttonText: 'Login',
                  onPressed: () {},
                ),
                Container(height: 16),
                SecondaryButton(
                  buttonText: 'Sign up',
                  onPressed: () {},
                ),
                Container(height: 32),
                MovieListItem(
                  imgUrl:
                      'https://m.media-amazon.com/images/M/MV5BNDE4OTMxMTctNmRhYy00NWE2LTg3YzItYTk3M2UwOTU5Njg4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX45_CR0,0,45,67_AL_.jpg',
                  rank: '1',
                  name: 'The Shawshank Redemption',
                  date: '1994',
                  rating: '9.2',
                ),
                Container(height: 16),
                SearchAndChatContainer(
                  hint: 'Type a message',
                  onChanged: (val) {},
                  onPressed: () {},
                  isSearchBar: false,
                ),
                Container(height: 16),
                MessageContainer(
                  sender: 'siva',
                  message: 'Have you watched Chernobyl, if yes how many times have you watched it',
                  isCurrentUser: false,
                ),
                Container(height: 16),
                MessageContainer(
                  sender: 'siva',
                  message: 'Yes I have watched it twice and I like it very much ',
                  isCurrentUser: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}