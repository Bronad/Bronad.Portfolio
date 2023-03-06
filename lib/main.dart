import 'package:flutter/material.dart';
import 'package:portfolio/coolers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lars Franke',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Coolers.accentColor,
        textTheme: GoogleFonts.pacificoTextTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: const MainPage(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {


//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//
//       ),
//       backgroundColor: Colors.black54,
//       body: SingleChildScrollView(
//         child: Center(
//           child: Column(
//             children: [
//               Stack(children: [
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: 300,
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     begin: Alignment.topRight,
//                     end: Alignment.bottomLeft,
//                     colors: [
//                       Colors.lightGreen,
//                       Colors.orangeAccent,
//                       Colors.lightBlueAccent,
//                     ],
//                   ),
//                 ),
//             ),
//                 Column(
//                   children: [
//                     SizedBox(height: 200,),
//                 Row(children: [
//                   SizedBox(width: 20,),
//                     CircleAvatar(
//                   radius: 150,
//                   backgroundImage: AssetImage("images/kek.jpg"),
//                 ),])
//
//               ]
//               ),
//
// ]),
//               Row(
//                 children: [
//                   SizedBox(width: MediaQuery.of(context).size.width * 0.15,),
//                   Container(
//                     width: 250,
//                     height: 250,
//                     color: Colors.brown,
//                   ),
//                   Container(
//                     width: 250,
//                     height: 250,
//                     color: Colors.green,
//                   ),
//                   Container(
//                     width: 250,
//                     height: 250,
//                     color: Colors.brown,
//                   ),
//                   SizedBox(width: MediaQuery.of(context).size.width * 0.15,)
//                   ],
//               ),
//       Column(
//         children: [
//           Center(
//             child: Text("Projekte"),
//
//           )
//         ],
//       ),
//       Container(
//       width: 250,
//       height: 250,
//       color: Colors.brown,
//     ),
//     Container(
//     width: 250,
//     height: 250,
//     color: Colors.brown,
//     ),Container(
//       width: 250,
//       height: 250,
//       color: Colors.brown,
//     ),Container(
//       width: 250,
//       height: 250,
//       color: Colors.brown,
//     ),Container(
//       width: 250,
//       height: 250,
//       color: Colors.brown,
//     ),
//
//
//       ]),),
//
//     ));
//   }
// }