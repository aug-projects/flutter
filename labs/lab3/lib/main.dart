import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Bar"),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Haytham A. Salama"),
                accountEmail: Text("haythamasalama@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  child: Text("H"),
                  backgroundColor: Colors.teal,
                ),
              ),
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Center(
                  child: Text(
                    "Haytham",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                subtitle: Text("Home Page ..."),
                trailing: Icon(Icons.arrow_right),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                subtitle: Text("Home Page ..."),
                trailing: Icon(Icons.arrow_right),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("settings"),
                subtitle: Text("settings Page ..."),
                trailing: Icon(Icons.arrow_right),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.red,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "home"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "setting"
            ),
          ],
        ),
      ),
    );
  }
}
