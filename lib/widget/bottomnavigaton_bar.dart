import 'package:flutter/material.dart';
import 'package:flutter_application_2_movie/cons/movie_const.dart';
import 'package:flutter_application_2_movie/view/movie_detail.dart';
import 'package:flutter_application_2_movie/view/movie_home.dart';
import 'package:flutter_application_2_movie/view/movie_play.dart';
import 'package:flutter_application_2_movie/view/movie_watch_list.dart';
class BottomNavigationLearnBar extends StatefulWidget {
  const BottomNavigationLearnBar({super.key});

  @override
  State<BottomNavigationLearnBar> createState() =>
      _BottomNavigationLearnBarState();
}

class _BottomNavigationLearnBarState extends State<BottomNavigationLearnBar> {
  int _selectedIndex = 0;

  List<Widget> _bottomList = [
    MovieHome(),WatchList(),MoviePlay(),MovieDetail()
    
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: _selectedIndex == 0 ? AppBar() : null,
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          currentIndex: _selectedIndex,
          iconSize: 30,
         // type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "",backgroundColor: MovieConst.colorIndigo),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_added_outlined), label: "",backgroundColor: MovieConst.colorYellow),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_circle_outline), label: "",backgroundColor: MovieConst.colorRed),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "",backgroundColor: MovieConst.colorPurple),
          ]),
      body: _bottomList.elementAt(_selectedIndex),
    );
  }
}
