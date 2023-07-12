// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:mehndidesignapp/home_screen.dart';
// import 'package:mehndidesignapp/screens/finger_screen.dart';
// import 'package:mehndidesignapp/screens/arm_screen.dart';
// import 'package:mehndidesignapp/screens/foot_screen.dart';
// import 'package:mehndidesignapp/screens/backhand_screen.dart';
// import 'package:mehndidesignapp/screens/bridal_screen.dart';
// import 'package:mehndidesignapp/screens/fronthand_screen.dart';
// import 'configration.dart';
//
// class DrawerScreen extends StatefulWidget {
//   @override
//   _DrawerScreenState createState() => _DrawerScreenState();
// }
//
// class _DrawerScreenState extends State<DrawerScreen> {
//
//   List drawerItems=[
//     {
//       'icon': FontAwesomeIcons.handDots,
//       'title' : 'FrontHand Design'
//     },
//     {
//       'icon': FontAwesomeIcons.handSparkles,
//       'title' : 'BackHand Design'
//     },
//     {
//       'icon': FontAwesomeIcons.handsAslInterpreting,
//       'title' : 'Finger Design'
//     },
//     {
//       'icon': FontAwesomeIcons.person,
//       'title' : 'Bridal Design'
//     },
//     {
//       'icon': FontAwesomeIcons.socks,
//       'title' : 'Foot Design'
//     },
//     {
//       'icon': Icons.accessibility,
//       'title' : 'Arm Design'
//     },
//   ];
//
//   void drawerTapFun(String title){
//     print('shaki  $title');
//     if(title == 'FrontHand Design'){
//       Navigator.push(context, MaterialPageRoute(builder: (context) => FronthandScreen()));
//     }else if(title == 'BackHand Design'){
//       Navigator.push(context, MaterialPageRoute(builder: (context) => BackhandScreen()));
//     }else if(title == 'Finger Design'){
//       Navigator.push(context, MaterialPageRoute(builder: (context) => FingerScreen()));
//     }else if(title == 'Bridal Design'){
//       Navigator.push(context, MaterialPageRoute(builder: (context) => BridalScreen()));
//     }else if(title == 'Foot Design'){
//       Navigator.push(context, MaterialPageRoute(builder: (context) => FootScreen()));
//     }else {
//       Navigator.push(context, MaterialPageRoute(builder: (context) => ArmScreen()));
//     }
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: primaryGreen,
//       padding: const EdgeInsets.only(top:50,bottom: 70,left: 10),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           const SizedBox(
//             height: 10,
//           ),
//           Row(
//             children: [
//               const CircleAvatar(
//                 backgroundImage: AssetImage('assets/images/indian 1.jpg'),
//               ),
//               const SizedBox(width: 10,),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: const [
//                   Text('Mehndi Design',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
//                   Text('Collection',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))
//                 ],
//               )
//             ],
//           ),
//           const SizedBox(height: 15,),
//
//           const Divider(
//             endIndent: 10,
//             // indent: 1.0,
//             height: 1.0,
//             thickness: 1,
//             color: Colors.white,
//           ),
//           const SizedBox(height: 40,),
//
//           Column(
//             children: drawerItems.map((element) => Padding(
//               padding: const EdgeInsets.all(6.0),
//               child: ListTile(
//                 leading: Icon(element['icon'],color: Colors.white,size: 18,),
//                 title: Text(element['title'],style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
//                 onTap: () => drawerTapFun(element ['title']),
//               ),
//               // child: Row(
//               //   children: [
//               //     Icon(element['icon'],color: Colors.white,size: 30,),
//               //     const SizedBox(width: 10,),
//               //     Text(element['title'],style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20))
//               //   ],
//               //
//               // ),
//             )).toList(),
//           ),
//
//
//
//         ],
//       ),
//
//     );
//   }
// }