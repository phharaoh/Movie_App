import 'package:flutter/material.dart';
import 'package:movie_app/helper/theme/app_color.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: TextStyle(
          color: AppColors.searchContentColor,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: AppColors.searchFillColor,

        prefixIcon: Icon(Icons.search, color: AppColors.searchContentColor),
      ),
    );
  }
}
