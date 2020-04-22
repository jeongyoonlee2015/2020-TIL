import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/model/model_movie.dart';
import 'package:netflixclone/widget/carousel_slider.dart';
import 'package:netflixclone/widget/circle_slider.dart';
import 'package:netflixclone/widget/box_slider.dart';

// 상단화면부터 시작해서 내용물 채우기
// backend에서 정보가져와야하는 부분
class HomeScreen extends StatefulWidget{
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  Firestore firestore = Firestore.instance;
  Stream<QuerySnapshot> streamData;

  @override
  void initState(){
    super.initState();
    streamData = firestore.collection('movie').snapshots();
  }

  Widget _fetchData(BuildContext context){
    //widget만들
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('movie').snapshots(),
      builder: (context, snapshot){
        if(!snapshot.hasData) return LinearProgressIndicator();
        return _buildBody(context, snapshot.data.documents);
      },
    );
  }

  Widget _buildBody(BuildContext context, List<DocumentSnapshot> snapshot){
    List<Movie> movies = snapshot.map((d) => Movie.fromSnapshot(d)).toList();
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            CarouselImage(movies: movies,),
            TopBar(),
          ],
        ),
        CircleSlider(movies: movies,),
        BoxSlider(movies: movies,)
      ],
    );
  }


  @override
  Widget build(BuildContext context){
    return _fetchData(context);
  }
}

class TopBar extends StatelessWidget{

  @override

  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

          Image.asset(
              'images/bbongflix_logo.png',
            fit: BoxFit.contain,
            height: 25,
          ),

          Container(padding: EdgeInsets.only(right: 1),
          child: Text(
            'TV 프로그램',
            style: TextStyle(fontSize: 14),
            ),
          ),

          Container(padding: EdgeInsets.only(right: 1),
            child: Text(
              '영화',
              style: TextStyle(fontSize: 14),
            ),
          ),

          Container(padding: EdgeInsets.only(right: 1),
            child: Text(
              '내가 찜한 콘텐츠',
              style: TextStyle(fontSize: 14),

            ),
          ),
        ],
      ),
    );
  }
}
