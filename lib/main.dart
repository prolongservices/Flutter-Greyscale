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
  bool isSelected = true;

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
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.green
              ),
              color: Colors.green[50],
              borderRadius: BorderRadius.all(Radius.circular(16))
            ),
            foregroundDecoration: BoxDecoration(
              color: isSelected ? null : Colors.grey,
              backgroundBlendMode: isSelected ? null : BlendMode.saturation
            ),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('English', style: TextStyle(
                    color: Colors.green,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                Align(child: Image.asset('assets/images/English.png', width: 120,), alignment: AlignmentDirectional.bottomEnd,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}