import 'package:top_rated_shows/utils/base_equatable.dart';

class LoginStates extends BaseEquatable {}

class LoginInitialState extends LoginStates {}

class LoginLoadingState extends LoginStates {}

class LoginFailedState extends LoginStates {
  final String error;
  LoginFailedState({this.error});

  @override
  String toString() {
    return error;
  }
}
