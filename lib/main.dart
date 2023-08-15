import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Tab> myTab = [
    Tab(
      text: "ini tab 1",
      icon: Icon(Icons.access_alarm),
    ),
    Tab(
      text: "ini tab 1",
      icon: Icon(Icons.accessibility_new),
    ),
    Tab(
      text: "ini tab 1",
      icon: Icon(Icons.account_circle),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        //penggunaan dgn initialindex untuk langsung direct to halaman tab1/tab2/tab3 dengan hitungan 0/1/2
        initialIndex: 1,
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Ini Tab Bar-Bar Widget"),
            bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              // indicatorColor: Colors.black,
              // indicatorWeight: 2,
              indicator: BoxDecoration(
                color: Colors.amber[50],
                borderRadius: BorderRadius.circular(40),
              ),
              tabs: myTab,
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text(
                  "Text 1",
                  style: TextStyle(fontSize: 50),
                ),
              ),
              Center(
                child: Text(
                  "Text 2",
                  style: TextStyle(fontSize: 50),
                ),
              ),
              Center(
                child: Text(
                  "Text 3",
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
