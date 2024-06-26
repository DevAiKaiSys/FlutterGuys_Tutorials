import 'package:dartz/dartz.dart';
import 'package:movie_app/core/errors/server_failure.dart';
import 'package:movie_app/data/datasources/movie_remote_data_source.dart';
import 'package:movie_app/data/models/movie_model.dart';
import 'package:movie_app/domain/entities/movie.dart';
import 'package:movie_app/domain/repositories/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieRemoteDataSource remoteDataSource;

  MovieRepositoryImpl({required this.remoteDataSource});

  // @override
  // Future<List<Movie>> getPopularMovies() async {
  //   final List<MovieModel> movieModels =
  //       await remoteDataSource.getPopularMovies();
  //   final List<Movie> movies =
  //       movieModels.map((model) => model.toEntity()).toList();
  //   return movies;
  // }
  //
  // @override
  // Future<List<Movie>> getTrendingMovies() async {
  //   final List<MovieModel> movieModels =
  //       await remoteDataSource.getTrendingMovies();
  //   final List<Movie> movies =
  //       movieModels.map((model) => model.toEntity()).toList();
  //   return movies;
  // }
  //
  // @override
  // Future<List<Movie>> searchMovies(String query) async {
  //   final List<MovieModel> movieModels =
  //       await remoteDataSource.searchMovies(query);
  //   final List<Movie> movies =
  //       movieModels.map((model) => model.toEntity()).toList();
  //   return movies;
  // }

  @override
  Future<Either<ServerFailure, List<Movie>>> getPopularMovies() async {
    try {
      final List<MovieModel> movieModels =
          await remoteDataSource.getPopularMovies();
      final List<Movie> movies =
          movieModels.map((model) => model.toEntity()).toList();
      return Right(movies);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<ServerFailure, List<Movie>>> getTrendingMovies() async {
    try {
      final List<MovieModel> movieModels =
          await remoteDataSource.getTrendingMovies();
      final List<Movie> movies =
          movieModels.map((model) => model.toEntity()).toList();
      return Right(movies);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<ServerFailure, List<Movie>>> searchMovies(String query) async {
    try {
      final List<MovieModel> movieModels =
          await remoteDataSource.searchMovies(query);
      final List<Movie> movies =
          movieModels.map((model) => model.toEntity()).toList();
      return Right(movies);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
