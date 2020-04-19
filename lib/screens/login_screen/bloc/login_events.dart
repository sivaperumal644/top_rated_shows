import 'package:flutter/cupertino.dart';
import 'package:top_rated_shows/utils/base_equatable.dart';

class LoginEvents extends BaseEquatable {}

class LoginButtonPressedEvent extends LoginEvents {
  final String username;
  final String password;

  LoginButtonPressedEvent({
    @required this.username,
    @required this.password,
  });
}
