import 'package:flutter/material.dart';
import 'package:flutter_application_2_movie/cons/movie_const.dart';
import 'package:flutter_application_2_movie/widget/common_Elevated_button_Icon.dart';
import 'package:flutter_application_2_movie/widget/common_Text_Element.dart';

class MovieDetail extends StatefulWidget {
  const MovieDetail({super.key});

  @override
  State<MovieDetail> createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {
  final double _heigth = 1.8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 68, 67, 67),
      body: SingleChildScrollView(child: _colmuntextelevtbttnImage(context)),
    );
  }

  Column _colmuntextelevtbttnImage(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _centerStackImageElvtBttn(context),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _movieTitlePointIcon(),
              MovieConst.sizedBoxH5,
              _nametomovieview(),
              MovieConst.sizedBoxH15,
              SingleChildScrollView(scrollDirection: Axis.horizontal,child: _elevatedButtonIcon()),
              MovieConst.sizedBoxH30,
              _movieTextTitle(),
              MovieConst.sizedBoxH20,
              _movietext(context),
              MovieConst.sizedBoxH20,
              _photoscroll(context),
            ],
          ),
        )
      ],
    );
  }

  Row _movieTitlePointIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CommonTextHsix(text: MovieConst.movie_Info_Title),
        Row(
          children: [
            Icon(
              Icons.star,
              color: MovieConst.colorYellow,
            ),
            CommonTextHsix(text: MovieConst.movie_Info_Title_Point),
          ],
        ),
      ],
    );
  }

  Row _nametomovieview() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CommonTextHsix(text: MovieConst.movie_Info_Title_Two),
        CommonTextHsix(text: MovieConst.movie_Info_Title_Two_Text),
      ],
    );
  }

  Row _elevatedButtonIcon() {
    return Row(
      children: [
        ElevatedButtonInfo(
          text: MovieConst.movie_Elevated_Button_Icon_Like,
          icon: Icon(Icons.thumb_up_alt_outlined),
        ),
        MovieConst.sizedBoxW10,
        ElevatedButtonInfo(
          text: MovieConst.movie_Elevated_Button_Icon_Documents,
          icon: Icon(Icons.document_scanner_outlined),
        ),
        MovieConst.sizedBoxW10,
        ElevatedButtonInfo(
          text: MovieConst.movie_Elevated_Button_Icon_Share,
          icon: Icon(Icons.share),
        ),
      ],
    );
  }

  CommonTextHsix _movieTextTitle() =>
      CommonTextHsix(text: MovieConst.movie_Info_Text_Title);

  Text _movietext(BuildContext context) {
    return Text(
      MovieConst.movie_Info_Text,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context)
          .textTheme
          .subtitle2
          ?.copyWith(color: MovieConst.colorWhite),
    );
  }

  SingleChildScrollView _photoscroll(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _photoMovieStar(context),
          MovieConst.sizedBoxW10,
          _photoMovieStar(context),
          MovieConst.sizedBoxW10,
          _photoMovieStar(context),
          MovieConst.sizedBoxW10,
          _photoMovieStar(context),
          MovieConst.sizedBoxW10,
          _photoMovieStar(context),
          MovieConst.sizedBoxW10,
          _photoMovieStar(context),
          MovieConst.sizedBoxW10,
        ],
      ),
    );
  }

  SizedBox _photoMovieStar(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 10,
      width: MediaQuery.of(context).size.width / 7,
      child: Image.asset(MovieConst.movie_Info_Image_For),
    );
  }

  Center _centerStackImageElvtBttn(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          _imageheigth(context),
          _elevatedbuttonimage(),
        ],
      ),
    );
  }

  SizedBox _imageheigth(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / _heigth,
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        MovieConst.movie_Info_Image,
        fit: BoxFit.cover,
      ),
    );
  }

  Positioned _elevatedbuttonimage() {
    return Positioned(
      top: 310,
      left: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton.icon(
            onPressed: () {},style: ElevatedButton.styleFrom(backgroundColor: MovieConst.colorOrange),
            icon: Icon(Icons.play_circle_outline_outlined),
            label: Text(MovieConst.movie_Info_Image_Elevated_Button_Text_One),
          ),
          MovieConst.sizedBoxW15,
          ElevatedButton.icon(
            onPressed: () {},style: ElevatedButton.styleFrom(backgroundColor: MovieConst.colorOrange),
            icon: Icon(Icons.bookmark_added_outlined),
            label: Text(MovieConst.movie_Info_Image_Elevated_Button_Text),
          ),
        ],
      ),
    );
  }
}
