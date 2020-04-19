import 'package:bloc/bloc.dart';
import 'package:top_rated_shows/authentication/authentication_bloc.dart';
import 'package:top_rated_shows/authentication/authentication_events.dart';
import 'package:top_rated_shows/repositories/login_repository.dart';
import 'package:top_rated_shows/screens/login_screen/bloc/login_events.dart';
import 'package:top_rated_shows/screens/login_screen/bloc/login_states.dart';
import 'package:top_rated_shows/utils/preference_helper.dart';

class LoginBloc extends Bloc<LoginEvents, LoginStates> {
  final AuthenticationBloc authenticationBloc;

  LoginBloc(this.authenticationBloc);
  @override
  LoginStates get initialState => LoginInitialState();

  @override
  Stream<LoginStates> mapEventToState(LoginEvents event) async* {
    if (event is LoginButtonPressedEvent) {
      yield LoginLoadingState();
      try {
        final token = await LoginRepository.authenticate(
          username: event.username,
          password: event.password,
        );
        if (token != null) {
          await PreferenceHelper.saveToken(token);
          authenticationBloc.add(AuthenticationLoggedInEvent());
        } else {
          yield LoginFailedState(error: "Failed");
        }
      } catch (error) {
        yield LoginFailedState(error: error.toString());
      }
    }
  }
}
