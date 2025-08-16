import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:movie_app/helper/theme/app_color.dart';
import 'package:movie_app/views/widgets/wrapper_home.dart';
import 'package:movie_app/controller/movie_controller.dart';

void main() {
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => WatchListController(),
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.scaffoldColor,
          appBarTheme: AppBarTheme(backgroundColor: AppColors.scaffoldColor),
          fontFamily: 'Quicksand',
        ),
        home: WrapperHome(),
      ),
    );
  }
}
