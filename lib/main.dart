

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  late double height, width;


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    height = size.height;
    width = size.width;
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: _body(),
    );
  }


  Widget _body() {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff00ff94).withOpacity(0.95),
        title: Text("앱바"),
      ),
      body: Container(
        width: width,
        height: height,
        color: Color(0xff62a18b),

        child: ListView.builder(

          itemCount: 100,
          itemBuilder: (context,_){
            return ItemWidget(_);

          }),
        ),
      );

  }

  ItemWidget(int index) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      child: Text("$index변째"),
    );
  }
}