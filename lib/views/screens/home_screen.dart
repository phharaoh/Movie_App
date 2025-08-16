import 'package:flutter/material.dart';
import 'package:movie_app/helper/theme/app_color.dart';
import 'package:movie_app/views/widgets/search_form.dart';
import 'package:movie_app/views/widgets/all_movie_txt.dart';
import 'package:movie_app/views/widgets/item_grid_view.dart';
import 'package:movie_app/views/widgets/item_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Movie Catalog',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchForm(),
            const SizedBox(height: 12),
            ItemListView(),
            const SizedBox(height: 12),

            const AllMovieTxt(),
            const SizedBox(height: 12),
            const ItemGridView(),
          ],
        ),
      ),
    );
  }
}
