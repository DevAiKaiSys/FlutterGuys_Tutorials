part of 'trending_movies_bloc.dart';

sealed class TrendingMoviesState {
  const TrendingMoviesState();
}

final class TrendingMoviesInitial extends TrendingMoviesState {}

class TrendingMoviesLoading extends TrendingMoviesState {}

class TrendingMoviesLoaded extends TrendingMoviesState {
  final List<Movie> movies;

  const TrendingMoviesLoaded(this.movies);
}

class TrendingMoviesError extends TrendingMoviesState {
  final String message;

  const TrendingMoviesError(this.message);
}
