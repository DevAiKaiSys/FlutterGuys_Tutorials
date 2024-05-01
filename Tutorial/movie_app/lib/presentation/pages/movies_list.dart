import 'package:flutter/material.dart';
import 'package:movie_app/domain/entities/movie.dart';
// import 'package:movie_app/presentation/widgets/movie_card.dart';

class MoviesList extends StatelessWidget {
  final List<Movie> movies;

  const MoviesList({Key? key, required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(movies.length, (index) {
          final movie = movies[index];
          return ListTile(
            leading: Image.network(
              'https://image.tmdb.org/t/p/w500/${movie.posterPath}',
              width: 50,
              fit: BoxFit.cover,
            ),
            title: Text(movie.title),
            subtitle: Text(movie.overview),
          );
          // return MovieCard(movie);
        }),
      ),
    );
  }
}
