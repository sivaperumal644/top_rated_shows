import 'package:top_rated_shows/utils/base_equatable.dart';

class AuthenticationStates extends BaseEquatable {}

class AuthenticatedInitialState extends AuthenticationStates {
  @override
  String toString() {
    return "AuthenticationInitialState";
  }
}

class AuthenticatedState extends AuthenticationStates {
  @override
  String toString() {
    return "AuthenticatedState";
  }
}

class UnAuthenticatedState extends AuthenticationStates {
  @override
  String toString() {
    return "UnAuthenticatedState";
  }
}

class AuthenticationLoadingState extends AuthenticationStates {
  @override
  String toString() {
    return "AuthenticationLoadingState";
  }
}
