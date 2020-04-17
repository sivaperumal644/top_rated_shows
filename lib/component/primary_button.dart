import 'package:flutter/material.dart';
import 'package:top_rated_shows/constants/colors.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonText;
  final Function onPressed;

  const PrimaryButton({
    this.buttonText,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: PRIMARY_COLOR.withOpacity(0.5),
            offset: Offset(0.0, 2.5),
            blurRadius: 1.5,
          )
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      child: RaisedButton(
        padding: EdgeInsets.symmetric(vertical: 12),
        color: PRIMARY_COLOR,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Text(
          buttonText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 19,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
