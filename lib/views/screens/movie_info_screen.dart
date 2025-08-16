import 'package:flutter/material.dart';
import 'package:movie_app/helper/theme/app_color.dart';

class MovieInfoScreen extends StatelessWidget {
  const MovieInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.movieDetailsScaffoldColor,
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * .4,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/test.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'The Last Journey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                Text(
                  'Realese Date',
                  style: TextStyle(
                    color: AppColors.releaseDateTxtColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'In a world where dreams and reality intertwine, a young artist discovers a hidden portal to a realm of endless creativity. As she navigates this enchanting landscape, she must confront her deepest fears and unlock the true power of her imagination to save both worlds from a looming darkness.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
