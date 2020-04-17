import 'package:flutter/material.dart';
import 'package:top_rated_shows/constants/colors.dart';

class SecondaryButton extends StatelessWidget {
  final String buttonText;
  final Function onPressed;
  const SecondaryButton({
    this.buttonText,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: PRIMARY_COLOR.withOpacity(0.5),
            offset: Offset(0.0, 2.5),
            blurRadius: 1.5,
          ),
        ],
      ),
      child: OutlineButton(
        padding: EdgeInsets.symmetric(vertical: 12),
        borderSide: BorderSide(color: PRIMARY_COLOR),
        highlightedBorderColor: PRIMARY_COLOR.withOpacity(0.5),
        highlightColor: PRIMARY_COLOR.withOpacity(0.05),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(
            color: PRIMARY_COLOR,
            fontSize: 19,
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
