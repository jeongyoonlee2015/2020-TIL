// 영화 데이터 관리를 용이하게 하기 위함
import 'package:cloud_firestore/cloud_firestore.dart';

class Movie
{
  final String title;
  final String keyword;
  final String poster;
  final bool like;
  final DocumentReference reference;
  // 실제 Firebase firestore에 있는 데이터 컬럼을 참조할 수 있는 링크
  //reference를 이용해 CRUD 기능을 간단히 처리

  Movie.fromMap(Map<String, dynamic> map, {this.reference})
  : title = map['title'],
    keyword = map['keyword'],
    poster = map['poster'],
    like = map['like'];

  Movie.fromSnapshot(DocumentSnapshot snapshot)
  : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "Movie<$title:$keyword>";
}
