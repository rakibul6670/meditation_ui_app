// import 'package:flutter/material.dart';
// import 'package:silentmoon/reminders.dart';
//
// class choose_topic extends StatefulWidget {
//   const choose_topic({super.key});
//
//   @override
//   State<choose_topic> createState() => _choose_topicState();
// }
//
// class _choose_topicState extends State<choose_topic> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(child: SingleChildScrollView(
//         child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 76,),
//             Text('What Brings you',style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),),
//             Text('to Silent Moon?',style: TextStyle(fontSize: 28,fontWeight: FontWeight.w300),),
//             SizedBox(height: 10,),
//             Text('choose a topic to focuse on:',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: Colors.grey),),
//             SizedBox(height: 30,),
//
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   height: 210,
//                   width: 176,
//                   decoration:BoxDecoration(borderRadius: BorderRadius.circular(12),
//                   color: Colors.deepPurpleAccent,
//                   ) ,
//                   child: Column(children: [
//                    SizedBox(height: 160,width: 164,child:
//                    Image.asset('assets/images/choose_topic-1.png',fit: BoxFit.cover,),),
//                   Text('Reduce Stress',style: TextStyle(color: Colors.yellowAccent,fontSize: 16,fontWeight: FontWeight.w400),)],)
//                 ),
//                 SizedBox(width: 26),
//
//                 Image.asset('assets/images/choose_topic-2.png', height: 167,width: 176,),
//
//               ],
//             ),
//
//             Row(
//               children: [
//                 Container(
//                   height: 167,
//                   width: 176,
//                   decoration:BoxDecoration(borderRadius: BorderRadius.circular(12,),
//                     color: Colors.brown,
//
//                   ) ,
//                   child: Padding(padding: EdgeInsets.only(left: 10),
//                   child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [SizedBox(height: 120,width: 170,
//                       child: Image.asset('assets/images/choose_topic-3.png'),),
//                       Text('Increase',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
//                       Text('Happiness',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),)
//                     ],),
//                   )
//                 ),
//                 SizedBox(width: 26,),
//                 Container(
//                   height: 210,
//                   width: 176,
//                   decoration:BoxDecoration(borderRadius: BorderRadius.circular(12,),
//                     color: Colors.yellow,
//                   ) ,
//                   child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
//                   child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(height:122,width: 140,
//                         child: Image.asset('assets/images/choose_topic-4.png'),),
//                       Text('Increase',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
//                       Text('Happiness',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),)
//                     ],
//                   ),)
//                 ),
//               ],
//             ),
//
//             Row(
//               children: [
//                 Container(
//                   height: 210,
//                   width: 176,
//                   decoration:BoxDecoration(borderRadius: BorderRadius.circular(12,),
//                     color: Colors.blueGrey,
//                   ) ,
//                   child: Image.asset('assets/images/choose_topic-5.png',fit: BoxFit.cover,),
//                 ),
//                 SizedBox(width: 26,),
//
//                 Container(
//                   height: 167,
//                   width: 176,
//                   decoration:BoxDecoration(borderRadius: BorderRadius.circular(12,),
//                     color: Colors.black54,
//                   ) ,
//                   child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
//                     child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         SizedBox(height:100,width: 176,
//                           child: Image.asset('assets/images/choose_topic-6.png',fit: BoxFit.cover,),),
//                         Text('Better Sleep',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white),),
//                       ],
//                     ),)
//                 ),
//               ],
//             ),
//
//             Row(
//               children: [
//                 Container(
//                     height: 167,
//                     width: 176,
//                     decoration:BoxDecoration(borderRadius: BorderRadius.circular(12,),
//                       color: Colors.black54,
//                     ) ,
//                     child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
//                       child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SizedBox(height:80,width: 200,
//                             child: Image.asset('assets/images/choose_topic-7.png',fit: BoxFit.cover,),),
//                           Text('Better Sleep',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white),),
//                         ],
//                       ),)
//                 ),
//                 SizedBox(width: 26,),
//                 Container(
//                   height: 210,
//                   width: 176,
//                   decoration:BoxDecoration(borderRadius: BorderRadius.circular(12,),
//                     color: Colors.redAccent,
//                   ) ,
//                   child: Image.asset('assets/images/choose_topic-1.png'),
//                 ),
//               ],
//             ),
//             SizedBox(height: 6,),
//            Container(
//              alignment: Alignment.centerRight,
//              child:  TextButton(onPressed: (){
//                Navigator.push(context, MaterialPageRoute(builder: (context) => reminders(),));
//              },
//                  child: Text('Next',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)),
//            ),
//
//             ],)
//         ),
//       ),
//       ),
//     );
//   }
// }
