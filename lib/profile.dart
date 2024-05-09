// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
//
// class ProfilePage extends StatefulWidget {
//   @override
//   _ProfilePageState createState() => _ProfilePageState();
// }
//
// class _ProfilePageState extends State<ProfilePage>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//   final List<String> _imageUrls = [
//     'https://st4.depositphotos.com/6903990/31458/i/450/depositphotos_314585930-stock-photo-beauty-girl-long-shiny-wavy.jpg',
//     'https://www.angelopedia.com/newspic/9X1NXJM081Model-main.jpg',
//     'https://static.toiimg.com/thumb/msid-67023037,width-400,resizemode-4/67023037.jpg',
//     'https://www.awesomeindia.in/wp-content/uploads/2023/11/Zendaya.jpg',
//     'https://w0.peakpx.com/wallpaper/738/294/HD-wallpaper-alexandra-daddario-actress-american-beautiful-eyes-thumbnail.jpg',
//     'https://i.pinimg.com/236x/62/2a/18/622a185b7acb03126363e26c961e8264.jpg',
//     'https://source.boomplaymusic.com/buzzgroup2/M00/38/5F/rBEe_GKzAjGAEX22AAGLKnKmBEs220.jpg',
//     'https://i.pinimg.com/736x/80/3a/48/803a484290528f56bcfe2cc11d077a29.jpg',
//     'https://images.filmibeat.com/img/popcorn/list_items/-20231120163631-617.jpg',
//     'https://wallpapers.com/images/hd/actress-pictures-ppejzqzemk6ac2no.jpg',
//   ];
//   final List<String> posts = List.generate(20, (index) => 'Post $index');
//   bool isLiked = false;
//
//
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 3, vsync: this);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //appbar
//         appBar: AppBar(
//           title: Text(
//             'Jenny wilson',
//             style: TextStyle(fontSize: 20),
//           ),
//           leading: IconButton(
//             icon: Icon(Icons.arrow_back),
//             onPressed: () {},
//           ),
//           actions: [
//             IconButton(
//               icon: Icon(Icons.notifications),
//               onPressed: () {
//                 // Add your onPressed logic here
//               },
//             ),
//             IconButton(
//               icon: Icon(Icons.horizontal_distribute),
//               onPressed: () {
//                 // Add your onPressed logic here
//               },
//             ),
//           ], // Icons on the right side
//         ), //leading buttons
//         backgroundColor: Colors.white,
//         body:SingleChildScrollView(
//           child: Center(
//             child: Column(
//               children: [
//                 const CircleAvatar(
//                   radius: 60.0,
//                   backgroundImage: NetworkImage(
//                     'https://img.freepik.com/free-photo/woman-with-beauty-long-brown-hair-fashion-model-with-long-straight-hair-fashion-model-posing_186202-8460.jpg',
//                     //text profile
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   '@jenny_wilson',
//                   style: TextStyle(fontSize: 20),
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Text(
//                   'model & star',
//                   style: TextStyle(fontSize: 10),
//                 ),
//                 SizedBox(height: 10.0),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Column(
//                       children: [
//                         Text(
//                           '679',
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, fontSize: 25),
//                         ),
//                         Text(
//                           'posts',
//                           style:
//                           TextStyle(color: Colors.grey, fontSize: 15),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         Text('2.9 M',
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 25)),
//                         Text(
//                           'Followers',
//                           style:
//                           TextStyle(color: Colors.grey, fontSize: 15),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         Text(
//                           '648',
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, fontSize: 25),
//                         ),
//                         Text(
//                           'following',
//                           style:
//                           TextStyle(color: Colors.grey, fontSize: 15),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         Text(
//                           '27M',
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, fontSize: 25),
//                         ),
//                         Text(
//                           'Likes',
//                           style:
//                           TextStyle(color: Colors.grey, fontSize: 15),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     ElevatedButton.icon(
//                       onPressed: () {},
//                       style: ButtonStyle(
//                           backgroundColor:
//                           MaterialStateProperty.all(Colors.red)),
//                       icon: Icon(
//                         Icons.person,
//                         color: Colors.white,
//                       ),
//                       label: Text(
//                         'Follow',
//                         style: TextStyle(
//                             fontSize: 15,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white),
//                       ),
//                     ),
//                     ElevatedButton.icon(
//                       onPressed: () {},
//                       style: ButtonStyle(
//                         backgroundColor:
//                         MaterialStateProperty.all(Colors.white),
//                       ),
//                       icon: Icon(
//                         Icons.message,
//                         color: Colors.redAccent,
//                       ),
//                       label: Text(
//                         'Message',
//                         style: TextStyle(
//                             fontSize: 15,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.redAccent),
//                       ),
//                     ),
//                     Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),color: Colors.grey.shade200),
//                         child: Icon( FontAwesomeIcons.instagram,size: 25,color: Colors.red,)),
//                     Container(
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),color: Colors.grey.shade100),
//                       child: Icon(
//                         Icons.favorite,size: 25,
//                         color: Colors.red,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 TabBar(
//                   controller: _tabController,
//                   tabs: [
//                     Tab(
//                       icon: Icon(Icons.category,
//                           size: 40, color: Colors.red),
//                     ),
//                     Tab(
//                       icon: Icon(Icons.bookmark,
//                           size: 40, color: Colors.black),
//                     ),
//                     Tab(
//                       icon: Icon(Icons.favorite,
//                           size: 40, color: Colors.red),
//                     )
//                   ],
//                 ),
//
//                 SizedBox(
//                   height: 20,
//                 ),
//                 TabBarView(  controller: _tabController,
//                   children: [
//                     GridView.builder(
//                         padding: EdgeInsets.all(5),
//                         gridDelegate:
//                         SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 3,
//                           crossAxisSpacing: 8.0,
//                           mainAxisSpacing: 8.0,
//                           // childAspectRatio: double.maxFinite,
//                           mainAxisExtent: 200,
//
//                         ),
//                         itemCount: _imageUrls.length,
//                         physics: NeverScrollableScrollPhysics(),
//                         shrinkWrap: true,
//                         itemBuilder: (BuildContext context, int index) {
//                           return GestureDetector(
//                               onTap: () {
//                                 setState(() {
//                                   print('Tapped on post $index');
//                                 });
//                               },
//                               child: Stack(children: [
//                                 ClipRRect(
//                                   borderRadius: BorderRadius.circular(20.0),
//                                   child: Image.network(
//                                     height: 200,
//                                     width: 200,
//                                     _imageUrls[index],
//                                     fit: BoxFit.cover,
//
//                                   ),
//                                 ),
//                                 Positioned(
//                                   bottom: 0.0,
//                                   left: 0.0,
//                                   child: IconButton(
//                                       icon: Icon(
//                                         isLiked ? Icons.favorite : Icons.favorite_border,
//                                         color: isLiked ? Colors.red : Colors.black,
//                                       ),
//                                       onPressed: () {
//                                         setState(() {
//                                           isLiked = !isLiked;
//                                         });
//                                         print('Liked post $index');
//                                       }
//                                   ),
//                                 ),
//                               ]));
//                         }),
//                   ],)
//               ],
//             ),
//           ),
//         ));
//   }
// }
//
