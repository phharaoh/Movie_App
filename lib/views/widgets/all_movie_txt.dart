import 'package:flutter/material.dart';
import 'package:movie_app/helper/theme/app_color.dart';

class AllMovieTxt extends StatelessWidget {
  const AllMovieTxt({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Text(
              'All Movies',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ));
  }
}