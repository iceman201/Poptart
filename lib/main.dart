import 'package:flutter/material.dart';
import './Explore.dart' as ExplorePage;

void main() {
 runApp(new MaterialApp(
    home: new MyApp()
  )); 
}

class MyApp extends StatefulWidget {
  @override
  MyTabsState createState() => new MyTabsState();
}


class MyTabsState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 3);
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "haha",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("this is a test"),
          backgroundColor: Colors.indigo
        ),
        bottomNavigationBar: new Material(
        color: Colors.indigo,
        child: new TabBar(
          controller: controller,
            tabs: <Tab>[
            new Tab(icon: new Icon(Icons.local_airport)),
            new Tab(icon: new Icon(Icons.local_airport)),
            new Tab(icon: new Icon(Icons.local_airport))
          ],
        ),
      ),
        body: new HomeWidget(),
      )
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: 20,
      itemBuilder: (contect, rowNumber) {
        return new Column(
          children: <Widget>[
            new Text("haha"),
            new Text("$rowNumber"),
            new Divider(color: Colors.deepOrange,)
          ],
        );
      },
    );
  }
}
