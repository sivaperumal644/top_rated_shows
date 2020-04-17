import 'package:flutter/material.dart';
import 'package:top_rated_shows/constants/colors.dart';

class MovieListItem extends StatelessWidget {
  final String imgUrl;
  final String rank;
  final String name;
  final String rating;
  final String date;

  const MovieListItem({
    this.imgUrl,
    this.rank,
    this.name,
    this.rating,
    this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color: PRIMARY_COLOR.withOpacity(0.3),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              imgUrl,
              width: 70,
              height: 94,
              fit: BoxFit.fill,
            ),
          ),
          Container(width: 20),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              rank + '. ',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 16),
                width: MediaQuery.of(context).size.width / 1.7,
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(height: 2),
              showPremiereDate(),
              Container(height: 2),
              showRating(),
              Container(height: 16)
            ],
          )
        ],
      ),
    );
  }

  Widget showRating() {
    return Row(
      children: <Widget>[
        Icon(
          Icons.star,
          color: PRIMARY_COLOR,
        ),
        Container(width: 5),
        Text(
          '$rating/10',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget showPremiereDate() {
    return Row(
      children: <Widget>[
        Text(
          'Premiere : ',
          style: TextStyle(
            fontSize: 14,
            color: Colors.black.withOpacity(0.75),
          ),
        ),
        Text(
          date,
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
