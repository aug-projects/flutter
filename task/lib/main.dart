import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Al-Azhar University',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'in Gaza',
              style: TextStyle(
                letterSpacing: 4,
                fontSize: 12,
                color: Colors.amber,
              ),
            ),
            SizedBox(width: 4),
            Text(
              'Al-Azhar',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 4),
            Text(
              'University',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 14,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.teal,
      ),
      drawer: Drawer(
        elevation: 25,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('2019XXXX'),
              accountEmail: Text(' Haytham A. Salama'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  'S',
                  // Replace 'S' with the first character of the student's name
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
              ),
              decoration: BoxDecoration(color: Colors.teal),
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text(
                  'contact@haythamasalama.me'), // Replace 'Mail' with the appropriate title
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.inbox),
              title:
                  Text('Inbox'), // Replace 'Inbox' with the appropriate title
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text(
                  'Contacts Us'), // Replace 'People' with the appropriate title
            ),
            ListTile(
              leading: Icon(Icons.local_offer),
              title: Text(
                  'Offers'), // Replace 'Local Offer' with the appropriate title
            ),
          ],
        ),
      ),
      body: Center(
        child: Table(
          columnWidths: {
            0: FixedColumnWidth(150),
            1: FixedColumnWidth(150),
          },
          children: [
            TableRow(
              children: [
                TableCell(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.all(4),
                    color: Colors.amber,
                    child: Text('Subject'),
                  ),
                ),
                TableCell(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.all(4),
                    color: Colors.amber,
                    child: Text('Subject hours'),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                TableCell(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.all(4),
                    color: Colors.grey,
                    child: Text('Subject 1'),
                  ),
                ),
                TableCell(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.all(4),
                    color: Colors.grey,
                    child: Text('2 Hours'),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                TableCell(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.all(4),
                    color: Colors.grey,
                    child: Text('Subject 2'),
                  ),
                ),
                TableCell(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.all(4),
                    color: Colors.grey,
                    child: Text('3 Hours'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.home,
                    color: _selectedIndex == 0 ? Colors.white : Colors.black,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                      color: _selectedIndex == 0 ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.settings,
                    color: _selectedIndex == 1 ? Colors.white : Colors.black,
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(
                      color: _selectedIndex == 1 ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {}, // Add desired action here
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
