import 'package:begginers_series/new_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => new_page()),
          );
        },
        backgroundColor: Colors.lightBlue,
        child: Icon(
          Icons.add,
        ),
      ),

      // APP BAR
      appBar: AppBar(
        title: Text(
          'AKINSOLA FARUQ',
        ),
        centerTitle: true,
        leading: Icon(
          Icons.home_filled,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),

      // body of the app

      body: Column(
        children: [
          Image.asset(
            'assets/images/background.png',
            height: 200,
          ),
          SizedBox(
            height: 30,
          ),
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT102vVg9-62X4jnVEC1O3ug3UX9PCQtMoHAg&usqp=CAU',
            height: 165,
          )
        ],
      ),
    );
  }
}
