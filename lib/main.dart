import 'package:flutter/material.dart';
import 'my_home_page.dart';


main () => runApp(MaterialApp(home: KeepAliveApp(),));

class KeepAliveApp extends StatefulWidget  {

  @override
  _KeepAliveAppState createState() => _KeepAliveAppState();
}

class _KeepAliveAppState extends State<KeepAliveApp> with SingleTickerProviderStateMixin {

  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("title"),
        bottom: TabBar(
          tabs: [Tab(icon: Icon(Icons.directions)), Tab(icon: Icon(Icons.directions)), Tab(icon: Icon(Icons.directions))],
          controller: _controller,
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children:[MyHomePage(), MyHomePage(), MyHomePage()],
//          [Text("第一个"), Text("第二个"), Text("第33333333个"),],
      )
    );
  }
}

