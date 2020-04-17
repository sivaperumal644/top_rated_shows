import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:top_rated_shows/constants/colors.dart';
import 'custom_text_field.dart';

class SearchAndChatContainer extends StatelessWidget {
  final String hint;
  final ValueChanged<String> onChanged;
  final Function onPressed;
  final bool isSearchBar;

  const SearchAndChatContainer({
    this.onChanged,
    this.onPressed,
    this.hint,
    this.isSearchBar = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
          child: CustomTextField(
            hintText: hint,
            onChanged: onChanged,
          ),
        ),
        Container(width: 8),
        Container(
          decoration: BoxDecoration(
              color: isSearchBar ? null : PRIMARY_COLOR.withOpacity(0.1),
              borderRadius: BorderRadius.circular(24)),
          child: Transform.scale(
            scale: 0.7,
            child: IconButton(
              padding: EdgeInsets.only(left: 4),
              icon: Icon(
                isSearchBar ? Icons.search : Icons.send,
                color: PRIMARY_COLOR,
                size: 35,
              ),
              onPressed: onPressed,
            ),
          ),
        )
      ],
    );
  }
}
