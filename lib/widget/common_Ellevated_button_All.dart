import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2_movie/cons/movie_const.dart';

class CommonElevatedButton extends StatelessWidget {
  const CommonElevatedButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 25,
      width: MediaQuery.of(context).size.width/4,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(text),
        style: ElevatedButton.styleFrom(
          backgroundColor: MovieConst.colorOrange,
          shape: RoundedRectangleBorder(
              borderRadius: MovieConst.border_radius_Circular_All10),
        ),
      ),
    );
  }
}
