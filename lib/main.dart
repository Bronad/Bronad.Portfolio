import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lars Franke',
      theme: ThemeData(

        primarySwatch: Colors.indigo,
      ),

      home: const MyHomePage(title: 'Portfolio - Mock Up'),
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


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),

      ),
      backgroundColor: Colors.white12,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Stack(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.lightGreen,
                      Colors.lightBlueAccent,
                    ],
                  ),
                ),
            ),
                Column(
                  children: [
                    SizedBox(height: 200,),
                CircleAvatar(
                  radius: 150,
                  backgroundImage: AssetImage("images/kek.jpg"),
                ),

              ]
              ),

]),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.15,),
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.brown,
                  ),
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.green,
                  ),
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.brown,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.15,)
                  ],
              )
            ,

      ]),),

    ));
  }
}