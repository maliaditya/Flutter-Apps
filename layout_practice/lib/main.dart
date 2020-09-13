import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hello, World",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello, World")),
      body: Center(
        child: Text("Hello, World", style: TextStyle(fontSize: 30)),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Text(
                'Gotcha! Nothing is here',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
          fixedColor: Colors.green,
          items: [
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(Icons.account_circle),
            ),
          ],
          onTap: (int indexOfItem) {}),
      backgroundColor: Colors.grey,
      drawerScrimColor: Colors.red,
    );
  }
}
