import 'package:flutter/material.dart';
import 'package:movie_app/models/movie_model.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MovieModel> list = MovieModel.getFakeMovies();
    final List<MovieModel> featuredList = list
        .where((e) => e.isFeatured)
        .toList();

    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: featuredList.length,
        itemBuilder: (context, index) {
          final MovieModel movie = featuredList[index];
          return Stack(
            alignment: Alignment.topRight,

            children: [
              Container(
                width: 200,
                height: 280,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(movie.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.bookmark, color: Colors.yellow, size: 24),
              ),
            ],
          );
        },
      ),
    );
  }
}
