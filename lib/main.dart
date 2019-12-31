import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        primarySwatch: Colors.blue,
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
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Grey Scale Demo'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: Container(
            height: 150,
            width: 250,
            foregroundDecoration: BoxDecoration(
              color: isSelected ? null : Colors.grey,
              backgroundBlendMode: isSelected ? null : BlendMode.saturation,
            ),
            decoration: new BoxDecoration(
              border: new Border.all(
                width: 1.5,
                color: Colors.green,
              ),
              color: Colors.green[50],
              borderRadius: new BorderRadius.all(new Radius.circular(16.0)),
            ),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text('English', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.green),),
                ),
                Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/English.png',
                      filterQuality: FilterQuality.high,
                      width: 120,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}