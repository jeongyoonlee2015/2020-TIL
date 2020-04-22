import 'package:flutter/material.dart';
import 'package:netflixclone/model/model_movie.dart';
import 'package:netflixclone/screen/detail_screen.dart';

//상태의변화가 없기때문에 stateless

class BoxSlider extends StatelessWidget{
  final List<Movie> movies;

  BoxSlider({this.movies});

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('지금 뜨는 콘텐츠'),
          Container(
            height: 120,
            // 좌우로 스크롤되는 리스트뷰작성
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: makeBoxImages(context, movies),
            ),
          )
        ],
      )
    );
  }
}
List<Widget> makeBoxImages(BuildContext context, List<Movie> movies){
  List<Widget> results = [];
  for(var i = 0; i < movies.length; i++){
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
            child: Image.network(movies[i].poster),
          ),
        ),
      )
    );
  }
  return results;
}
