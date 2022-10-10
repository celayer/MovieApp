import 'package:flutter/material.dart';
import 'package:flutter_application_2_movie/cons/movie_const.dart';
import 'package:flutter_application_2_movie/view/movie_home.dart';
import 'package:flutter_application_2_movie/widget/common_Text_Element.dart';

class WatchList extends StatefulWidget {
  const WatchList({super.key});

  @override
  State<WatchList> createState() => _WatchListState();
}

class _WatchListState extends State<WatchList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      backgroundColor: Color.fromARGB(255, 82, 81, 81),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _paddingContainerStack(context),
            _paddingContainerStackTwo(context),
            _paddingContainerStack(context),
            _paddingContainerStackTwo(context),
            _paddingContainerStack(context),
            _paddingContainerStackTwo(context),
            _paddingContainerStack(context),
            _paddingContainerStackTwo(context),
            _paddingContainerStack(context),
            _paddingContainerStackTwo(context),
          ],
        ),
      ),
    );
  }

  Padding _paddingContainerStackTwo(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 4.5,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: MovieConst.border_radius_Circular_All25,
            color: MovieConst.colorBlue),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: MovieConst.border_radius_Circular_All25,
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  MovieConst.movie_Info_Image_One,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CommonTextHsix(text: MovieConst.movie_Home_Image_Title_One),
                MovieConst.sizedBoxH5,
                Text(
                  MovieConst.movie_Home_Image_Text,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(color: MovieConst.colorWhite),
                ),
                MovieConst.sizedBoxH5,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text(
                      MovieConst.movie_Home_Image_Point_Text,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          ?.copyWith(color: MovieConst.colorWhite),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: MovieConst.colorGrey,
                  borderRadius: BorderRadius.only(
                      bottomRight: MovieConst.radius_Circular_All10),
                ),
                height: MediaQuery.of(context).size.height / 20,
                width: MediaQuery.of(context).size.width / 10,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.restore_from_trash_outlined,
                      color: Colors.white,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _paddingContainerStack(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 4.5,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: MovieConst.border_radius_Circular_All25,
            color: MovieConst.colorBlue),
        child: _stackImageColmunRow(context),
      ),
    );
  }

  Stack _stackImageColmunRow(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: MovieConst.border_radius_Circular_All25,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              MovieConst.movie_Info_Image_Zero,
              fit: BoxFit.fill,
            ),
          ),
        ),
        _colmunRowImage(context),
        Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              color: MovieConst.colorGrey,
              borderRadius: BorderRadius.only(
                  bottomRight: MovieConst.radius_Circular_All10),
            ),
            height: MediaQuery.of(context).size.height / 20,
            width: MediaQuery.of(context).size.width / 10,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.restore_from_trash_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column _colmunRowImage(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CommonTextHsix(text: MovieConst.movie_Home_Image_Title),
        MovieConst.sizedBoxH5,
        Text(
          MovieConst.movie_Home_Image_Text,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: MovieConst.colorWhite),
        ),
        MovieConst.sizedBoxH5,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            Text(
              MovieConst.movie_Home_Image_Point_Text,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: MovieConst.colorWhite),
            ),
          ],
        ),
      ],
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      backgroundColor: MovieConst.colorTransparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) => MovieHome()),
            ),
          );
        },
        icon: Icon(
          Icons.arrow_back,
          size: 30,
        ),
      ),
      title: Text(
        MovieConst.movie_Wacth_List_Title,
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(color: MovieConst.colorWhite),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.restore_from_trash_outlined,
            size: 30,
          ),
        ),
      ],
    );
  }
}
