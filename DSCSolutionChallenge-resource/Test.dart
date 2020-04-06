import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //stateless(기본) & statefull 방식이 있음
  //stateful은 바뀌지 않는 것
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Joy 1st Flutter'),
    );
  }
}
//alt+enter -> 클래스 생
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key); //title이라는 애를 받게 됨
  final String title; //title이라는 string 생성 이제 못 바꿈

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // _들어가면 private임 내부에서만 사용할 수 있는 것 (보안적요소를 남기는 것)

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( //AppBar만들어 줌
        title: Text(widget.title),
      ),
      body: Center(
        child: Column( //배열을 할 수 있는 공간
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter', //_counter 갖고와서 세팅
              style: Theme.of(context).textTheme.display1, //text 테마중에 display1
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton( // 단추 이름임 위젯 밖에 세팅

        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
