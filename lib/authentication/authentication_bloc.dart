import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_rated_shows/authentication/authentication_events.dart';
import 'package:top_rated_shows/authentication/authentication_states.dart';
import 'package:top_rated_shows/utils/preference_helper.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvents, AuthenticationStates> {
  @override
  AuthenticationStates get initialState => AuthenticatedInitialState();

  @override
  Stream<AuthenticationStates> mapEventToState(
      AuthenticationEvents event) async* {
    if (event is AppStartedEvent) {
      if (await PreferenceHelper.getToken() != null) {
        yield AuthenticatedState();
      } else {
        yield UnAuthenticatedState();
      }
    }

    if (event is AuthenticationLoggedInEvent) {
      yield AuthenticationLoadingState();
      yield AuthenticatedState();
    }

    if (event is AuthenticationLoggedOutEvent) {
      yield AuthenticationLoadingState();
      PreferenceHelper.clearStorage();
      yield UnAuthenticatedState();
    }
  }
}
