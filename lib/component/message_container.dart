import 'package:flutter/material.dart';
import 'package:top_rated_shows/constants/colors.dart';

class MessageContainer extends StatelessWidget {
  final String sender;
  final String message;
  final bool isCurrentUser;
  const MessageContainer({this.sender, this.message, this.isCurrentUser});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isCurrentUser ? Alignment.topRight : Alignment.topLeft,
      child: Container(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width / 1.5),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(
          color: isCurrentUser
              ? PRIMARY_COLOR.withOpacity(0.06)
              : Colors.black.withOpacity(0.06),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              isCurrentUser ? 'You' : sender,
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(height: 4, width: 1),
            Text(
              message,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
