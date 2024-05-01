part of 'search_movies_bloc.dart';

// sealed class SearchMoviesEvent {}
class SearchMoviesEvent {
  final String query;

  SearchMoviesEvent(this.query);
}
