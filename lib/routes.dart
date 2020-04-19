import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_rated_shows/authentication/authentication_bloc.dart';
import 'package:top_rated_shows/authentication/authentication_states.dart';
import 'package:top_rated_shows/screens/login_screen/bloc/login_bloc.dart';
import 'package:top_rated_shows/screens/login_screen/login_screen.dart';
import 'package:top_rated_shows/screens/nav_screen/bloc/nav_bloc.dart';
import 'package:top_rated_shows/screens/nav_screen/nav_screens.dart';

class AppRoutes {
  static const String LOGIN_SCREEN = "login_screen";
  static const String SIGNUP_SCREEN = "signup_screen";
  static const String FORGOT_PASSWORD_SCREEN = "forgot_password_screen";
  static const String OTP_SCREEN = "otp";
  static const NAV_SCREEN = "nav_Screens";
  static const String MOVIES_SCREEN = "movies_screen";
  static const String TVSHOWS_SCREEN = "tvshows_screen";
  static const String CHAT_SCREEN = "chat_screen";
  static const String ABOUT_APP_SCREEN = "about_app_screen";
}

Route<dynamic> getRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.LOGIN_SCREEN:
      return _buildLoginScreen();
    case AppRoutes.SIGNUP_SCREEN:
      return _buildSignUpScreen();
    case AppRoutes.FORGOT_PASSWORD_SCREEN:
      return _buildForgotPasswordScreen();
    case AppRoutes.OTP_SCREEN:
      return _buildOTPScreen();
    case AppRoutes.NAV_SCREEN:
      return _buildNavScreens();
    case AppRoutes.MOVIES_SCREEN:
      return _buildMoviesScreen();
    case AppRoutes.TVSHOWS_SCREEN:
      return _buildTVShowScreen();
    case AppRoutes.CHAT_SCREEN:
      return _buildChatScreen();
    case AppRoutes.ABOUT_APP_SCREEN:
      return _buildAboutAppScreen();
  }
}

Route _buildLoginScreen() {
  return MaterialPageRoute(
    builder: (context) => addAuthBloc(
      context,
      PageBuilder.buildLoginScreen(),
    ),
  );
}

Route _buildSignUpScreen() {}

Route _buildForgotPasswordScreen() {}

Route _buildOTPScreen() {}

Route _buildNavScreens() {
  return MaterialPageRoute(
    builder: (context) => addAuthBloc(
      context,
      PageBuilder.buildNavScreens(),
    ),
  );
}

Route _buildMoviesScreen() {}

Route _buildTVShowScreen() {}

Route _buildChatScreen() {}

Route _buildAboutAppScreen() {}

class PageBuilder {
  static Widget buildLoginScreen() {
    return BlocProvider(
      create: (context) {
        AuthenticationBloc authBloc =
            BlocProvider.of<AuthenticationBloc>(context);
        return LoginBloc(authBloc);
      },
      child: LoginScreen(),
    );
  }

  static Widget buildNavScreens() {
    return BlocProvider(
      create: (context) {
        AuthenticationBloc authBloc =
            BlocProvider.of<AuthenticationBloc>(context);
        return NavBloc(authBloc);
      },
      child: NavigateScreens(),
    );
  }
}

addAuthBloc(BuildContext context, Widget widget) {
  return BlocListener(
    bloc: BlocProvider.of<AuthenticationBloc>(context),
    listener: (context, state) {
      if (state is UnAuthenticatedState) {
        while (Navigator.canPop(context)) {
          Navigator.pop(context);
        }
        Navigator.pushReplacementNamed(context, AppRoutes.LOGIN_SCREEN);
      }
      if (state is AuthenticatedState) {
        while (Navigator.canPop(context)) {
          Navigator.pop(context);
        }
        Navigator.pushReplacementNamed(context, AppRoutes.NAV_SCREEN);
      }
    },
    child: BlocBuilder(
      bloc: BlocProvider.of<AuthenticationBloc>(context),
      builder: (context, state) {
        return widget;
      },
    ),
  );
}
