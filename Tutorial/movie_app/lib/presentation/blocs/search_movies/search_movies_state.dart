part of 'search_movies_bloc.dart';

sealed class SearchMoviesState {}

final class SearchMoviesInitial extends SearchMoviesState {}

class SearchMoviesLoading extends SearchMoviesState {}

class SearchMoviesLoaded extends SearchMoviesState {
  final List<Movie> movies;

  SearchMoviesLoaded(this.movies);
}

class SearchMoviesError extends SearchMoviesState {
  final String message;

  SearchMoviesError(this.message);
}
