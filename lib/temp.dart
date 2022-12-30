// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
//
// void main() {
//   runApp(PianoApp());
// }
//
// class PianoApp extends StatelessWidget {
//   // This widget is the root of your application.
//   Future<void> playSound(String noteName) async {
//     final player = AudioPlayer();
//     await player.play(AssetSource('$noteName.mp3'));
//   }
//
//   Expanded  PianoKey(Function onMainKeyPress){
//     return Expanded(
//       flex: 1,
//       child: Stack(
//         clipBehavior: Clip.none,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(right: 8.0, bottom: 2.0, top: 2.0),
//             child: Container(
//               width: double.infinity,
//               height: double.infinity,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.white, elevation: 40),
//                 onPressed: () {
//                   onMainKeyPress();
//                 },
//                 child: null,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
// Expanded PianoKeyWithSuperKey(Function onMainKeyPress, Function onSuperKeyPress){
//   return Expanded(
//     flex: 1,
//     child: Stack(
//       clipBehavior: Clip.none,
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(right: 8.0, bottom: 2.0, top: 2.0),
//           child: Container(
//             width: double.infinity,
//             height: double.infinity,
//             child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.white, elevation: 40),
//               onPressed: () {
//                 onMainKeyPress();
//               },
//               child: null,
//             ),
//           ),
//         ),
//         Positioned(
//           top: -25,
//           child: Container(
//             width: 250,
//             height: 50,
//             child: ElevatedButton(
//                 style:
//                 ElevatedButton.styleFrom(backgroundColor: Colors.black),
//                 onPressed: () {
//                   onSuperKeyPress();
//                 },
//                 child: null),
//           ),
//         )
//       ],
//     ),
//   );
// }
//
//
// @override
// Widget build(BuildContext context) {
//   return MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Piano Mobile App',
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Colors.grey,
//       ),
//       backgroundColor: Colors.black,
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           PianoKey(
//             onMainKeyPress: playSound(),
//           ),
//           PianoKeyWithSuperKey(),
//           PianoKeyWithSuperKey(),
//           PianoKeyWithSuperKey(),
//           PianoKeyWithSuperKey(),
//           PianoKeyWithSuperKey(onMainKeyPress: playSound('C'),
//             onSuperKeyPress: playSound('Db'),),
//           PianoKeyWithSuperKey(playSound('C'), ),
//         ],
//       ),
//     ),
//   );
// }
// }
//
//
