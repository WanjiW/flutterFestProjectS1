import 'package:flutter/material.dart';

void main() {
  runApp(
      const MyApp()); //initial skeleton from Flutter documentation, hence the little debug banner
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.cyan,
      title: "Wanji Info Page",
      home: Scaffold( //gives the page design, w/o it the page is v ugly
        backgroundColor: Colors.deepPurpleAccent,
        body: Center( //can't be a container or column
            child: Column( // you want many children, use a Column!
              mainAxisAlignment: MainAxisAlignment.center,   // use this to center instead of many Divider()s
              children: [
                Container(
                  constraints: BoxConstraints(minHeight: 50),
                  child: Column(
                    children: [
                      Text('Wanjiru Wang\'ondu', style: TextStyle(fontSize: 38, color: Colors.white70), textAlign: TextAlign.center),
                      Text('CS student', style: TextStyle(fontSize: 30, color: Colors.white70), textAlign: TextAlign.center,)          //does fontFamily need to be specified in pubspec.yaml
                    ],
                  )
                ),
                Divider(color: Colors.deepPurpleAccent),  //makes the Divider invisible

                Container(
                  child: Row (    //bcse the icon and info need to be side by side // has to come first or else 'named parameters' error
                    children: [
                      Icon(Icons.call, color: Colors.white),
                      Text('        +250 000000000', style: TextStyle(fontSize: 16, color: Colors.white)),
                    ],
                  ),
                  padding: EdgeInsets.all(15),
                  color: Colors.black38,
                  constraints: BoxConstraints(maxHeight: 50, maxWidth: 300),
                ),
                Divider(color: Colors.deepPurpleAccent),

                Container(
                  child: Row (    //bcse the icon and info need to be side by side
                    children: [
                      Icon(Icons.email, color: Colors.white),
                      Text('        ww@gmail.com', style: TextStyle(fontSize: 16, color: Colors.white)),
                    ],
                  ),
                  padding: EdgeInsets.all(15),
                  color: Colors.black38,
                  constraints: BoxConstraints(maxHeight: 50, maxWidth: 300),
                ),
                // Icon(Icons.call)
              ],
            )
        ),
      ),
    );
  }
}
