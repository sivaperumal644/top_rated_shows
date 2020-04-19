import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_rated_shows/authentication/authentication_bloc.dart';
import 'package:top_rated_shows/authentication/authentication_events.dart';
import 'package:top_rated_shows/routes.dart';

main() => runApp(
      BlocProvider<AuthenticationBloc>(
        create: (BuildContext context) {
          return AuthenticationBloc()
            ..add(
              AppStartedEvent(),
            );
        },
        child: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: getRoute,
      home: addAuthBloc(context, Container()),
    );
  }
}
