import 'package:flutter/material.dart';
import 'package:flutter_application_2_movie/cons/movie_const.dart';

class CommonTextHsix extends StatelessWidget {
  const CommonTextHsix({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(color: MovieConst.colorWhite),
    );
  }
}
