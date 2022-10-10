import 'package:flutter/material.dart';
import 'package:flutter_application_2_movie/cons/movie_const.dart';

class ElevatedButtonInfo extends StatelessWidget {
  const ElevatedButtonInfo({super.key, required this.text, required this.icon});
  final String text;
  final Icon icon;
  final double _heigth=25;
  final double _width=3.4;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height/_heigth,
      width: MediaQuery.of(context).size.width/_width,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: icon,
        label: Text(text),
        style:
            ElevatedButton.styleFrom(backgroundColor: MovieConst.colorOrange),
      ),
    );
  }
}
