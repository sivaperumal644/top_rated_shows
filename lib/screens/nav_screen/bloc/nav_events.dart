import 'package:top_rated_shows/utils/base_equatable.dart';

class NavEvents extends BaseEquatable {}

class MoviesTabPressedEvent extends NavEvents {}

class TVShowsTabPressedEvent extends NavEvents {}

class ChatTabPressedEvent extends NavEvents {}

class AboutAppTabPressedEvent extends NavEvents {}
