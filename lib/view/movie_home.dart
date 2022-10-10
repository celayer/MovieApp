import 'package:flutter/material.dart';
import 'package:flutter_application_2_movie/cons/movie_const.dart';
import 'package:flutter_application_2_movie/widget/common_Ellevated_button_All.dart';
import 'package:flutter_application_2_movie/widget/common_Text_Element.dart';


class MovieHome extends StatefulWidget {
  const MovieHome({super.key});

  final String _text = "Search";
  final double _heigth = 1.3;

  @override
  State<MovieHome> createState() => _MovieHomeState();
}

class _MovieHomeState extends State<MovieHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: _appBar(context),
      drawer: _drawer(),
      backgroundColor: Color.fromARGB(255, 114, 112, 112),
      body: DefaultTabController(
        length: 5,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _textField(context),
                MovieConst.sizedBoxH30,
                _colmnTabBarTabContainer(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column _colmnTabBarTabContainer(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(7.0),
          child: SizedBox(
            height: 30,
            child: TabBar(
              isScrollable: true,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: MovieConst.colorOrange),
              tabs: [
                Tab(
                  child: Text(
                      MovieConst.movie_Home_Elevated_Button_View_Text_Action),
                ),
                Tab(
                  child: Text(
                      MovieConst.movie_Home_Elevated_Button_View_Text_Horror),
                ),
                Tab(
                  child: Text(
                      MovieConst.movie_Home_Elevated_Button_View_Text_Comedy),
                ),
                Tab(
                  child: Text(MovieConst
                      .movie_Home_Elevated_Button_View_Text_Animation),
                ),
                Tab(
                  child: Text(
                      MovieConst.movie_Home_Elevated_Button_View_Text_Romantic),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          //height degerini alcattıkca sayfa buyucek
          height: MediaQuery.of(context).size.height / 1.3,
          width: MediaQuery.of(context).size.width,
          child: TabBarView(
            children: [
              _containerTabbar(context),
              _containerTabbarTwo(context),
              _containerTabbarTree(context),
              _containerTabbarFor(context),
              _containerTabbarFive(context),
            ],
          ),
        )
      ],
    );
  }

  Container _containerTabbarFive(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          _rowtextTitle(),
          MovieConst.sizedBoxH10,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _paddingStackImage(context),
                _paddingStackImagee(context),
                _paddingStackImage(context),
                _paddingStackImagee(context),
                _paddingStackImage(context),
                _paddingStackImagee(context),
              ],
            ),
          ),
          MovieConst.sizedBoxH25,
          _rowtextTitlee(),
          MovieConst.sizedBoxH10,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
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
        ],
      ),
    );
  }

  Container _containerTabbarFor(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          _rowtextTitle(),
          MovieConst.sizedBoxH10,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _paddingStackImage(context),
                _paddingStackImagee(context),
                _paddingStackImage(context),
                _paddingStackImagee(context),
                _paddingStackImage(context),
                _paddingStackImagee(context),
              ],
            ),
          ),
          MovieConst.sizedBoxH25,
          _rowtextTitlee(),
          MovieConst.sizedBoxH10,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
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
        ],
      ),
    );
  }

  Container _containerTabbarTree(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          _rowtextTitle(),
          MovieConst.sizedBoxH10,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _paddingStackImage(context),
                _paddingStackImagee(context),
                _paddingStackImage(context),
                _paddingStackImagee(context),
                _paddingStackImage(context),
                _paddingStackImagee(context),
              ],
            ),
          ),
          MovieConst.sizedBoxH25,
          _rowtextTitlee(),
          MovieConst.sizedBoxH10,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
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
        ],
      ),
    );
  }

  Container _containerTabbarTwo(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          _rowtextTitle(),
          MovieConst.sizedBoxH10,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _paddingStackImage(context),
                _paddingStackImagee(context),
                _paddingStackImage(context),
                _paddingStackImagee(context),
                _paddingStackImage(context),
                _paddingStackImagee(context),
              ],
            ),
          ),
          MovieConst.sizedBoxH25,
          _rowtextTitlee(),
          MovieConst.sizedBoxH10,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
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
        ],
      ),
    );
  }

  Container _containerTabbar(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          _rowtextTitle(),
          MovieConst.sizedBoxH10,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _paddingStackImage(context),
                _paddingStackImagee(context),
                _paddingStackImage(context),
                _paddingStackImagee(context),
                _paddingStackImage(context),
                _paddingStackImagee(context),
              ],
            ),
          ),
          MovieConst.sizedBoxH25,
          _rowtextTitlee(),
          MovieConst.sizedBoxH10,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
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
        ],
      ),
    );
  }

  Padding _paddingContainerStackTwo(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 3,
        width: MediaQuery.of(context).size.width / 2.2,
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
                  MovieConst.movie_Info_Image_Tree,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CommonTextHsix(text: MovieConst.movie_Home_Image_Title_Tree),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.star,
                            color: MovieConst.colorYellow,
                          ),
                          Text(
                            MovieConst.movie_Info_Title_Point,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(color: MovieConst.colorWhite),
                          )
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.play_circle_outline_outlined,
                            size: 40,
                            color: MovieConst.colorOrange,
                          ))
                    ],
                  ),
                  MovieConst.sizedBoxH10,
                ],
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
        height: MediaQuery.of(context).size.height / 3,
        width: MediaQuery.of(context).size.width / 2.2,
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
                  MovieConst.movie_Info_Image_Two,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CommonTextHsix(text: MovieConst.movie_Home_Image_Title_Two),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.star,
                            color: MovieConst.colorYellow,
                          ),
                          Text(
                            MovieConst.movie_Info_Title_Point,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(color: MovieConst.colorWhite),
                          )
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.play_circle_outline_outlined,
                            size: 40,
                            color: MovieConst.colorOrange,
                          ))
                    ],
                  ),
                  MovieConst.sizedBoxH10,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _paddingStackImagee(BuildContext context) {
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
                  MovieConst.movie_Info_Image_Zero,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 60, left: 10, right: 15, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.play_circle_outline_outlined,
                            size: 40,
                            color: MovieConst.colorOrange,
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _paddingStackImage(BuildContext context) {
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
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, top: 60, right: 20, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.play_circle_outline_outlined,
                          color: MovieConst.colorOrange,
                          size: 50,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _paddingStackIamge(BuildContext context) {
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
          ],
        ),
      ),
    );
  }

  SingleChildScrollView _scrolpaddingColumnHome(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _textField(context),
            MovieConst.sizedBoxH10,
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: _rowElevatedButtonPage()),
            MovieConst.sizedBoxH25,
            _rowtextTitle(),
            MovieConst.sizedBoxH10,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _stackImageMovie(context),
                  MovieConst.sizedBoxW10,
                  _stackImageMovie(context),
                  MovieConst.sizedBoxW10,
                  _stackImageMovie(context),
                  MovieConst.sizedBoxW10,
                ],
              ),
            ),
            MovieConst.sizedBoxH25,
            _rowtextTitlee(),
            MovieConst.sizedBoxH10,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 3,
                        width: MediaQuery.of(context).size.width / 2,
                        child: ClipRRect(
                          borderRadius: MovieConst.border_radius_Circular_All20,
                          child: Image.asset(
                            MovieConst.movie_Info_Image_One,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 150),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MovieConst.sizedBoxH5,
                            CommonTextHsix(
                                text: MovieConst.movie_Home_Image_Title_One),
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
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: MovieConst.colorYellow,
                                    ),
                                    Text(
                                      MovieConst.movie_Home_Image_Point_Text,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          ?.copyWith(
                                              color: MovieConst.colorWhite),
                                    ),
                                  ],
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.play_circle_outline_outlined,
                                    color: MovieConst.colorOrange,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  MovieConst.sizedBoxW10,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _rowtextTitlee() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CommonTextHsix(text: MovieConst.movie_Home_List_Bollyw_Title),
        Text(
          MovieConst.movie_Home_See_More,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(color: MovieConst.colorOrange),
        )
      ],
    );
  }

  Row _rowtextTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CommonTextHsix(text: MovieConst.movie_Home_List_Hollyw_Title),
        Text(
          MovieConst.movie_Home_See_More,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(color: MovieConst.colorOrange),
        )
      ],
    );
  }

  Stack _stackImageMovie(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 5,
          width: MediaQuery.of(context).size.width,
          child: ClipRRect(
            borderRadius: MovieConst.border_radius_Circular_All20,
            child: Image.asset(
              MovieConst.movie_Info_Image_One,
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 5,
          width: MediaQuery.of(context).size.width / 2.5,
          child: Padding(
            padding: const EdgeInsets.only(top: 45),
            child: Column(
              children: [
                MovieConst.sizedBoxH5,
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
                      color: MovieConst.colorYellow,
                    ),
                    Text(
                      MovieConst.movie_Home_Image_Point_Text,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          ?.copyWith(color: MovieConst.colorWhite),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_circle_outline_outlined,
                        color: MovieConst.colorOrange,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Drawer _drawer() {
    return Drawer(
      backgroundColor: MovieConst.colorGrey,
    );
  }

  Row _rowElevatedButtonPage() {
    return Row(
      children: [
        CommonElevatedButton(
            text: MovieConst.movie_Home_Elevated_Button_View_Text_Action),
        MovieConst.sizedBoxW5,
        CommonElevatedButton(
            text: MovieConst.movie_Home_Elevated_Button_View_Text_Horror),
        MovieConst.sizedBoxW5,
        CommonElevatedButton(
            text: MovieConst.movie_Home_Elevated_Button_View_Text_Comedy),
        MovieConst.sizedBoxW5,
        CommonElevatedButton(
            text: MovieConst.movie_Home_Elevated_Button_View_Text_Animation),
      ],
    );
  }

  TextField _textField(BuildContext context) {
    return TextField(
      cursorColor: MovieConst.colorOrange,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: MovieConst.border_radius_Circular_All15),
          label: Text(
            "Search",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: MovieConst.colorOrange),
          ),
          labelStyle: TextStyle(
            color: MovieConst.colorOrange,
          ),
          prefixIcon: Icon(Icons.search),
          prefixIconColor: MovieConst.colorYellow),
      keyboardType: TextInputType.text,
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      backgroundColor: MovieConst.colorTransparent,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(MovieConst.movie_Home_AppBar_Title),
          Text(
            MovieConst.movie_Home_AppBar_TitleTwo,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: MovieConst.colorOrange),
          )
        ],
      ),
      actions: [
        Container(
          decoration: BoxDecoration(
              borderRadius: MovieConst.border_radius_Circular_All40,
              color: MovieConst.colorRed),
          height: MediaQuery.of(context).size.height / 10,
          width: MediaQuery.of(context).size.width / 9,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ClipRRect(
              borderRadius: MovieConst.border_radius_Circular_All35,
              child: Image.asset(
                MovieConst.movie_Info_Image_For,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        MovieConst.sizedBoxW5,
      ],
    );
  }
}
