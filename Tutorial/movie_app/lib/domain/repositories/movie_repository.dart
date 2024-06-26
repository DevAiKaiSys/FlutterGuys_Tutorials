import 'package:dartz/dartz.dart';
import 'package:movie_app/core/errors/server_failure.dart';
import 'package:movie_app/domain/entities/movie.dart';

abstract class MovieRepository {
  // Future<List<Movie>> getTrendingMovies();
  // Future<List<Movie>> searchMovies(String query);
  // Future<List<Movie>> getPopularMovies();
  Future<Either<Failure, List<Movie>>> getTrendingMovies();

  Future<Either<Failure, List<Movie>>> searchMovies(String query);

  Future<Either<Failure, List<Movie>>> getPopularMovies();
}
