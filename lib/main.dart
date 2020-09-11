import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Material Test App",
      home : MyHomePage()
    );
  }

}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }

}

class MyHomePageState extends State<MyHomePage>{
  var currentIndexBottomNavigation = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            title: Text("AppBar Title", style: TextStyle(color: Colors.yellow)),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.1))),
        drawer: Drawer(),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.access_alarms),
                title: Text("Button 1")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet),
                title: Text("Button 2")
            )
          ],
          currentIndex: currentIndexBottomNavigation,
          selectedItemColor: Colors.yellow.shade200,
          onTap: printCheckBottomNavigation,
        ),
      );
  }

  printCheckBottomNavigation( int index ) {
    setState(() { currentIndexBottomNavigation = index; });
    //print(currentIndexBottomNavigation);
    debugPrint("asdasd"+currentIndexBottomNavigation.toString());
  }

}

/*
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material Test App",
      home: Scaffold(
        appBar: AppBar(
            title: Text("AppBar Title", style: TextStyle(color: Colors.yellow)),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.1))),
        drawer: Drawer(),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.access_alarms),
                title: Text("Button 1")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet),
                title: Text("Button 2")
            )
          ],
          currentIndex: currentIndexBottomNavigation,
          selectedItemColor: Colors.yellow.shade200,
          onTap: printCheckBottomNavigation(currentIndexBottomNavigation),
        ),
      ),
    );
  }

 */



