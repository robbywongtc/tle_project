import 'package:flutter/material.dart';
import 'package:tle_project/Input.dart';
import 'package:tle_project/ble.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Connectbtn(context),
              Usecurrentbtn(context),],
          ),
              // This trailing comma makes auto-formatting nicer for build methods.

          ],
        ),

      ),

    );

  }
  Widget Connectbtn(BuildContext context) {
    return Container(
      width: 180,
      height: 200,
      color: Colors.amber,

      child: ElevatedButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return blescreen();
          })
          );
        },

        style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))
            )
        ),
        //icon: Icon(Icons.text_snippet, color: Colors.black),
        child: const Text(
          "Find Bluetooth device",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
  Widget Usecurrentbtn(BuildContext context) {
    return Container(
      width: 180,
      height: 200,
      color: Colors.amber,

      child: ElevatedButton(
        onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context){
      return input();
      })
      );
      },

        style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))
            )
        ),
        //icon: Icon(Icons.text_snippet, color: Colors.black),
        child: const Text(
          "Continue with current device",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

}
