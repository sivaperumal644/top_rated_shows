import 'package:flutter/material.dart';
import 'package:top_rated_shows/component/primary_button.dart';
import 'package:top_rated_shows/constants/colors.dart';

class DetailsScreen extends StatelessWidget {
  final String imgLink;
  final String name;
  final String date;
  final String rank;
  final String rating;
  final String description;
  final String trailerLink;

  DetailsScreen({
    this.imgLink,
    this.name,
    this.date,
    this.rank,
    this.rating,
    this.description,
    this.trailerLink,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
      child: ListView(
        children: <Widget>[
          BackButton(),
          Container(height: 16),
          imageWidget(imgLink),
          Container(height: 24),
          Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Container(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              showInfoItem(Icons.event, date),
              separator(),
              showInfoItem(Icons.turned_in_not, rank),
              separator(),
              showInfoItem(Icons.star, '$rating/10')
            ],
          ),
          Container(height: 24),
          Text(
            'OverView',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Container(height: 8),
          Text(
            description,
            style: TextStyle(fontSize: 18),
          ),
          Container(height: 32),
          PrimaryButton(
            buttonText: 'WATCH TRAILER',
            onPressed: () {},
          ),
          Container(height: 48)
        ],
      ),
    );
  }

  Widget separator() {
    return Container(
      height: 6,
      width: 6,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.6),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  Widget showInfoItem(IconData dateIcon, String info) {
    return Row(
      children: <Widget>[
        Icon(
          dateIcon,
          color: PRIMARY_COLOR.withOpacity(0.5),
        ),
        Container(width: 5),
        Text(
          info,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black.withOpacity(0.75),
          ),
        )
      ],
    );
  }

  Widget imageWidget(String imgUrl) {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 8,
              )
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.network(
              imgUrl,
              width: 300,
              height: 370,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}

class BackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
    );
  }
}
