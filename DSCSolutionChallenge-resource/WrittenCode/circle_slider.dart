//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:netflixclone/model/model_movie.dart';
import 'package:netflixclone/screen/detail_screen.dart';

//상태의변화가 없기때문에 stateless

class CircleSlider extends StatelessWidget{
  final List<Movie> movies;
  CircleSlider({this.movies});

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('미리보기'),
          Container(
            height: 120,
            // 좌우로 스크롤되는 리스트뷰작성
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: makeCircleImages(context, movies),
            ),
            )
        ],
      )
    );
  }
}
List<Widget> makeCircleImages(BuildContext context, List<Movie> movies){
  List<Widget> results = [];
  for(var i = 0; i < movies.length; i++){
    // 각 원형 위젯이 클릭 가능하도록 -> Inkwell
    results.add(
      InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute<Null>(
              fullscreenDialog: true,
              builder: (BuildContext context) {
                return DetailScreen(
                  movie: movies[i],
                );
              }));
        },
        child: Container(
          padding: EdgeInsets.only(right:10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              backgroundImage: NetworkImage(movies[i].poster),
              radius: 48,
            ),
          ),
        ),
      )
    );
  }
  return results;
}
