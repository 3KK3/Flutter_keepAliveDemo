import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with AutomaticKeepAliveClientMixin {

  int _count = 0;

  // 重写wantKeepAlive方法 就可以有记忆功能
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        tooltip: '点击一下试试',
          child: Icon(Icons.add),
          onPressed: (){
            setState(() {
              _count++;
        });
      }),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("点一下加1"),
            Text("当前数字是:$_count",
            style: TextStyle(color: Colors.red, fontSize: 25.0),),
          ],

        ),

      ),
    );
  }
}
