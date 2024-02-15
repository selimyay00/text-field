import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Our goal is to display whatever user types in the text field.
  // we will display it as a text, below the text field.
    // we will use the onChanged callback. 

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  // currentText string variable will store the current content of text field.
    // for now, we're just creating it.
  String currentText = "";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Type here!',
              ), // InputDecoration
              onChanged: (inputText) {
                setState(() {
                  currentText = inputText;
                });
              }
            ), // TextField
            SizedBox(height: 24),
            Text(
              "Current Text Field : $currentText", 
            ),
          ],
        ),
      ),
    );
  }
}
