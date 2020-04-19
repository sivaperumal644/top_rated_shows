import 'package:bloc/bloc.dart';
import 'package:top_rated_shows/authentication/authentication_bloc.dart';
import 'package:top_rated_shows/screens/nav_screen/bloc/nav_events.dart';
import 'package:top_rated_shows/screens/nav_screen/bloc/nav_states.dart';

class NavBloc extends Bloc<NavEvents, NavStates> {
  final AuthenticationBloc authenticationBloc;

  NavBloc(this.authenticationBloc);

  @override
  NavStates get initialState => NavInitialState();

  @override
  Stream<NavStates> mapEventToState(NavEvents event) {
    return null;
  }
}
