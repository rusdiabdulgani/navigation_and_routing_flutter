import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigasi dan Route',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MenuUtama(),
        '/halaman1': (context) => Halaman1(),
        '/halaman2': (context) => Halaman2(),
        '/halaman3': (context) => Halaman3(),
        '/halaman4': (context) => Halaman4(),
      },
    );
  }
}

class MenuUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Utama'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildMenuCard(context, Icons.home, 'Dashboard', '/halaman1'),
                SizedBox(width: 20),
                buildMenuCard(context, Icons.search, 'Search', '/halaman2'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildMenuCard(context, Icons.notifications, 'Notifications', '/halaman3'),
                SizedBox(width: 20),
                buildMenuCard(context, Icons.settings, 'Settings', '/halaman4'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuCard(BuildContext context, IconData icon, String title, String route) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: SizedBox(
          width: 150,
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                size: 50,
              ),
              SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Halaman1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Dashboard'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text('Ini adalah Halaman Dashboard'),
      ),
    );
  }
}

class Halaman2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Search'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text('Ini adalah Halaman Search'),
      ),
    );
  }
}

class Halaman3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Notifications'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text('Ini adalah Halaman Notifications'),
      ),
    );
  }
}

class Halaman4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Settings'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text('Ini adalah Halaman Settings'),
      ),
    );
  }
}
