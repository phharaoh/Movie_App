import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:movie_app/models/movie_model.dart';
import 'package:movie_app/models/watch_list_model.dart';
import 'package:movie_app/controller/movie_controller.dart';

class ItemGridView extends StatefulWidget {
  const ItemGridView({super.key});

  @override
  State<ItemGridView> createState() => _ItemGridViewState();
}

class _ItemGridViewState extends State<ItemGridView> {
  @override
  Widget build(BuildContext context) {
    final list = MovieModel.getFakeMovies();
    final featuredList = list.where((e) => e.isFeatured).toList();
    return Expanded(
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 3 / 4,
        ),
        itemCount: featuredList.length,
        itemBuilder: (context, index) {
          final MovieModel movie = featuredList[index];
          return Stack(
            alignment: Alignment.topRight,

            children: [
              Container(
                width: 240,
                height: 320,
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
                onPressed: () {
                  final watchListControl = Provider.of<WatchListController>(
                    context,
                    listen: false,
                  );

                  setState(() {
                    movie.isBookmarked = !movie.isBookmarked;
                  });
                  if (!movie.isBookmarked) {
                    watchListControl.addToWatchList(
                      WatchListModel(
                        title: movie.title,
                        releaseDate: movie.releaseDate,
                        image: movie.image,
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('${movie.title} added to watchlist'),
                      ),
                    );
                  } else {
                    watchListControl.removeFromWatchList(
                      WatchListModel(
                        title: movie.title,
                        releaseDate: movie.releaseDate,
                        image: movie.image,
                      ),
                    );
                  }
                },
                icon: Icon(
                  !movie.isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                  size: 30,
                  color: Colors.yellow,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
