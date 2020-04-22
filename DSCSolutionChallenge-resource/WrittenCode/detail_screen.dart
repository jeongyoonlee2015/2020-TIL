import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:netflixclone/model/model_movie.dart';

class DetailScreen extends StatefulWidget {
  final Movie movie;
  DetailScreen({this.movie});
  _DetailScreenState createState() => _DetailScreenState();

}
class _DetailScreenState extends State<DetailScreen>{
  bool like = false;

  @override
  void initState(){
    super.initState();
    // 영화에 대한 찜하기 상태 가져오기
    like = widget.movie.like;
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
          child: SafeArea(
            child: ListView(children: <Widget>[
              Stack(
                //상세페이지 상단 부분 코드 작성
                children: <Widget>[
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              widget.movie.poster
                          ),
                          fit: BoxFit.cover,
                      ),
                    ),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(alignment: Alignment.center,
                        color: Colors.black.withOpacity(0.1),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 45, 0, 10),
                              child: Image.network(widget.movie.poster),
                              height: 300,
                            ),
                              Container(
                                padding: EdgeInsets.all(7),
                                child: Text(
                                  '99% 일치 2019 15+ 시즌 1개',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(7),
                                child: Text(
                                  widget.movie.title,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(3),
                                child: FlatButton(
                                  onPressed: (){},
                                  color: Colors.teal,
                                  child: Row(
                                    mainAxisAlignment:
                                      MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(Icons.play_arrow),
                                      Text('재생'),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Text(widget.movie.toString(),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                alignment: Alignment.centerLeft,
                                child: Text('출연: 현빈, 손예진, 서지혜 \n제작자: 이정효, 박지은',
                                style: TextStyle(color: Colors.white60, fontSize: 12)),
                              )
                            ],
                          ),
                        ),
                        ),
                      ),
                    ),
                  ),
                  //Positioned를 통해 Appbar 생성
                  Positioned(child: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                  )
                ],
              ),
              Container(
                color: Colors.black26,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: InkWell(
                        onTap: (){},
                        child: Column(
                          children: <Widget>[
                            like ? Icon(Icons.check) : Icon(Icons.add),
                            Padding(
                              padding: EdgeInsets.all(5),
                            ),
                            Text(
                              '내가 찜한 콘텐츠',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white60,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          like ? Icon(Icons.thumb_up): (Icons.thumbs_up_down),
                          Padding(
                            padding: EdgeInsets.all(5),
                          ),
                          Text(
                            '평가',
                            style: TextStyle(
                              fontSize: 11, color: Colors.white60,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.send),
                            Padding(
                              padding: EdgeInsets.all(5),
                            ),
                            Text(
                              '공유',
                              style: TextStyle(
                                fontSize: 11, color: Colors.white60,
                              ),
                            )
                          ],
                        )
                      ),
                    )
                  ],
                ),)
            ],
            ),
          )
      ),
    );
  }
}
