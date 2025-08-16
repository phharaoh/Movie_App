import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:movie_app/controller/movie_controller.dart';

class WatchListScreen extends StatelessWidget {
  const WatchListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WatchListController watchListController = Provider.of<WatchListController>(
      context,
      listen: false,
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Watch List',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: watchListController.watchList.isEmpty
          ? Center(
              child: Text(
                "The List is Empty ",
                style: TextStyle(color: Colors.white),
              ),
            )
          : ListView.builder(
              itemCount: watchListController.watchList.length,
              itemBuilder: (context, index) {
                final movie = Provider.of<WatchListController>(
                  context,
                  listen: false,
                ).watchList[index];
                return ListTile(
                  leading: Image(
                    image: AssetImage(movie.image),
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    movie.title,
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    movie.releaseDate.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.bookmark, color: Colors.yellow),
                    onPressed: () {
                      Provider.of<WatchListController>(
                        context,
                        listen: false,
                      ).removeFromWatchList(movie);

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            '${movie.title} removed from watchlist',
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}
