import 'package:dartz/dartz.dart';
import 'package:movie_app/core/errors/server_failure.dart';
import 'package:movie_app/domain/entities/movie.dart';
import 'package:movie_app/domain/repositories/movie_repository.dart';

class GetPopularMovies {
  final MovieRepository repository;

  GetPopularMovies(this.repository);

// Future<List<Movie>> call() async {
//   return await repository.getPopularMovies();
// }
  Future<Either<Failure, List<Movie>>> call() async {
    return await repository.getPopularMovies();
  }
}
