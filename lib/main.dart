import 'package:flutter/material.dart';

void main() {
  runApp(RealState());
}

class RealState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textTheme: TextTheme(
          headline3: TextStyle(
              fontSize: 46, fontWeight: FontWeight.bold, color: Colors.black),
          headline5: TextStyle(
              fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black),
          headline6: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w300, color: Colors.black),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
