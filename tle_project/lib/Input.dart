import 'package:flutter/material.dart';

class input extends StatefulWidget {
  const input({Key? key}) : super(key: key);

  @override
  State<input> createState() => _inputState();
}

class _inputState extends State<input> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("Story Input"),
    centerTitle: true,

    ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        TextField(

          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter parameters to generate a story',
          ),
        ),
          SizedBox(height: 20,),
    Center(child: ElevatedButton(
    onPressed: () {},
    child: Text("Submit"),
    style: ElevatedButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: Colors.blue,
    minimumSize: const Size(200,55),
    shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10))
    )
    ),
    ),
      ),

    ])
    )
    );
  }
}
