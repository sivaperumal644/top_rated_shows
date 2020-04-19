import 'package:top_rated_shows/utils/base_equatable.dart';

class AuthenticationEvents extends BaseEquatable{}

class AppStartedEvent extends AuthenticationEvents{}

class AuthenticationInitialEvent extends AuthenticationEvents{
  @override
  String toString() {
    return "AuthenticationInitialEvent";
  }
}

class AuthenticationLoggedInEvent extends AuthenticationEvents{
  @override
  String toString() {
    return "AuthenticationLoggedInEvent";
  }
}

class AuthenticationLoggedOutEvent extends AuthenticationEvents{
  @override
  String toString() {
    return "AuthenticationLoggedOutEvent";
  }
}