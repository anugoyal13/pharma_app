// import 'dart:core';
//
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:pharma_app/model/data.dart';
// import 'package:velocity_x/velocity_x.dart';
// //import 'package:phone_verification/screens/login_screen.dart';
//
// class HomeScreen extends StatefulWidget {
//   //final String med_name;
//
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   final _auth = FirebaseAuth.instance;
//   final ref = FirebaseFirestore.instance.collection("medicine");
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SingleChildScrollView(
//       child: Column(
//         children: [
//           10.heightBox,
//           VxBox(
//               child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   "Hi,".text.xl4.fontFamily("Poppins").black.make(),
//                   "Samanta!"
//                       .text
//                       .bold
//                       .extraBlack
//                       .xl4
//                       .fontFamily("Poppins")
//                       .black
//                       .make(),
//                 ],
//               ),
//               20.widthBox,
//               Container(
//                 height: 50,
//                 width: 50,
//                 child: ClipRRect(
//                     borderRadius: BorderRadius.circular(100),
//                     child: Image.asset(
//                       "assets/images/women.jpg",
//                       fit: BoxFit.cover,
//                     )),
//               ),
//             ],
//           )).padding(EdgeInsets.all(25)).make(),
//           VxBox(
//                   child: Align(
//             child: Row(
//               children: [
//                 5.widthBox,
//                 Icon(Icons.search, color: Colors.grey),
//                 14.widthBox,
//                 "Search for medicine".text.gray500.make(),
//               ],
//             ).p4(),
//           ))
//               .gray200
//               .width(context.screenWidth * 0.9)
//               .roundedLg
//               .height(30)
//               .make(),
//           15.heightBox,
//           Stack(
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Container(
//                   height: MediaQuery.of(context).size.height * 0.3,
//                   decoration: BoxDecoration(
//                     // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
//                     color: Color(0xffc6e2ff),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                 ),
//               ),
//               Row(
//                 children: <Widget>[
//                   Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         Text(
//                           "We will deliver",
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                             letterSpacing: 0.5,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 5),
//                           child: Text(
//                             "your medicines",
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 20, top: 50),
//                     child: Image.asset(
//                       "assets/images/med.jpg",
//                       height: 150,
//                       width: 100,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           15.heightBox,
//           Padding(
//             padding: const EdgeInsets.all(5.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Text(
//                     " Popular",
//                     style: TextStyle(
//                         fontSize: 25,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black),
//                   ),
//                 ),
//                 Icon(Icons.more_vert),
//               ],
//             ),
//           ),
//           StreamBuilder(
//               stream: ref.snapshots(),
//               builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
//                 if (snapshot.hasData) {
//                   // List<Data> dataList = snapshot.data!.docs
//                   //     .map((e) => Data.fromJson(e.data()))
//                   //     .toList();
//                   //var data = User.fromJson(Data);
//                   // ignore: file_names
//                   //var data;
//                   Map<String, dynamic> data;
//                   List<Data> dataList = snapshot.data.docs.map((e) => Data.fromJson(e.data())).toList();
//
//                  // Map<String, dynamic> data;
//                  //  List<Data> dataList = snapshot.data!.docs
//                  //      .map((e) => Data.fromJson(e as Map<String,dynamic>)).toList();
//
//                   return GridView.builder(
//                       shrinkWrap: true,
//                       itemCount: dataList.length,
//                       scrollDirection:
//                           context.isMobile ? Axis.horizontal : Axis.vertical,
//                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: context.isMobile ? 2 : 4),
//                       itemBuilder: (context, index) {
//                         return VxBox(
//                             child: Column(
//                           children: [
//                             Container(
//                                 height: 120,
//                                 width: 120,
//                                 child: Image.network(dataList[index].image,
//
//                                     fit: BoxFit.cover)),
//                             Text(dataList[index].med_name)
//                                 .text
//                                 .white
//                                 .makeCentered(),
//                           ],
//                         )).height(4).width(5).make();
//                       });
//                 } else {
//                   return CircularProgressIndicator();
//                 }
//               })
//         ],
//       ),
//     ));
//   }
// }
