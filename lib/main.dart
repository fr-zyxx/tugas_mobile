import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Cari Jodoh',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TinderHomePage(),
    );
  }
}

class TinderHomePage extends StatefulWidget {
  @override
  _TinderHomePageState createState() => _TinderHomePageState();
}

class _TinderHomePageState extends State<TinderHomePage> {
  List<String> profiles = [
    'assets/cewe1.jpg',
    'assets/cewe2.jpg',
    'assets/cewe3.jpg',
    'assets/cewe4.jpg',
    'assets/cowo1.jpg',
    'assets/cowo2.jpg',
    'assets/cowo3.jpg',
  ];
  int currentIndex = 0;

  void likeProfile() {
    setState(() {
      currentIndex = (currentIndex + 1) % profiles.length;
    });
  }

  void dislikeProfile() {
    setState(() {
      currentIndex = (currentIndex + 1) % profiles.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Cari Jodoh'), centerTitle: true, elevation: 0, backgroundColor: Colors.pink,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(profiles[currentIndex]),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FloatingActionButton(
                onPressed: dislikeProfile,
                backgroundColor: Colors.red,
                child: Icon(Icons.close),
              ),
              FloatingActionButton(
                onPressed: likeProfile,
                backgroundColor: Colors.green,
                child: Icon(Icons.favorite),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
