import 'package:flutter/material.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

void main() {
  runApp(RealState());
}

class RealState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline3: TextStyle(
              fontSize: 46, fontWeight: FontWeight.bold, color: Colors.black),
          headline5: TextStyle(
              fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black),
          headline6: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey),
          subtitle1: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: -1),
        ),
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PixelPerfect(
      assetPath: 'assets/Home.jpg',
      scale: 375 / MediaQuery.of(context).size.width,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TopBar(),
              SearchBar(),
              Row(
                children: [
                  SizedBox(width: 35),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.blue,
                    child: Container(
                      height: 300,
                      width: 285,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Container(
                              color: Colors.red,
                              width: 260,
                              height: 180,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 32),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          height: 55,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.tune),
                hintText: 'Search residence',
                border: InputBorder.none,
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.6,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 35.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Location',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_pin,
                      color: Colors.blue,
                      size: 16,
                    ),
                    SizedBox(width: 3),
                    Text(
                      'Surabaya, East Java',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Image.asset(
              'assets/Profile.jpg',
              width: 50,
            ),
          ),
        ],
      ),
    );
  }
}

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1587663298189-6e05e9017fd5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXRodW1ibmFpbHx8NTI1OTUwfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=750&q=60'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Lets find your',
                          style: Theme.of(context).textTheme.headline5),
                      Text('Paradise',
                          style: Theme.of(context).textTheme.headline3),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Find with us your dream home',
                          style: Theme.of(context).textTheme.headline6),
                      Text('quickly and precisely',
                          style: Theme.of(context).textTheme.headline6),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    minimumSize:
                        Size(MediaQuery.of(context).size.width * 0.9, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    textStyle: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: Text('Get started'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
