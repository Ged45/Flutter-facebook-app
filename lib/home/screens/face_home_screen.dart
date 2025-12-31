// import 'package:flutter/material.dart';
//  import '../widgets/post.dart';
//  import'./notification.dart';
//  import './friends.dart';
 
//  class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//    @override
//    State<Home> createState() => _HomeState();
//  }

//  class _HomeState extends State<Home> {

  
//    @override
//    Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//            //create row in appbar
//             title: Text('facebook', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.blue),),
//             actions: [
//                 // R
//                 IconButton( icon:const Icon(Icons.search, size: 30.0, color:Colors.black, ), onPressed: () =>{}),
//                 IconButton(icon: const Icon(Icons.add, size: 30.0, color: Colors.black,), onPressed: () => {}),
//                 IconButton(icon: const Icon (Icons.menu, size: 30.0, color: Colors.black,), onPressed: () =>{})
//               ],
         
              


              
//       ),

//       body:Padding(padding: const EdgeInsets.all(10.0),
//       child: Column(
        
//               children: [
//                 Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [

//                 IconButton(icon: const Icon(Icons.home, size: 30.0, color: Colors.blue,), onPressed: () =>{}),
//                 IconButton(icon: const Icon(Icons.person, size: 30.0, color: Colors.blue,), onPressed: () =>{
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const FriendsScreen(),
//                     ),
//                   )

//                 }),
//                 IconButton(icon: const Icon(Icons.message_rounded, size: 30.0, color: Colors.blue,), onPressed: () =>{}),
//                 IconButton(icon: const Icon(Icons.video_collection, size: 30.0, color: Colors.blue,), onPressed: () =>{}),
//                 IconButton(icon: const Icon(Icons.notifications, size: 30.0, color: Colors.blue,), onPressed: () =>{
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const NotificationsScreen(),
//                     ),
//                   )
//                 }),
//                 IconButton(icon: const Icon(Icons.business_center_outlined, size: 30.0, color: Colors.blue,), onPressed: () =>{}),
//    ],
//    ),
//    //horizontal line
//    Divider(color: Colors.grey, height: 18.0, thickness: 1.0,),
//       SizedBox(height: 10.0,),

//              Expanded(
//               child: ListView(
//                 children: [
                 
//           Row(
//             // add padding to the row
           

          
//               children: [

//                 Column(
//                   mainAxisAlignment:MainAxisAlignment.spaceEvenly,
//                   children: [
//                   Row(

//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                     //circle avatar with image from network
//                     CircleAvatar(
//                       radius: 20.0,
//                       backgroundImage: AssetImage('assets/images/icons8-profile-avatar-66.png'),
//                     ),
//                     // text field beside circle avatar
//                    SizedBox(width: 30.0,
//                    ),
//                     Container(
//                       width: 350.0,
//                       height: 40.0,
//                       decoration: BoxDecoration(
//                         color: Colors.grey[200],
//                         borderRadius: BorderRadius.circular(20.0),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 15.0),
//                         child: TextField(
//                           decoration: InputDecoration(
//                             border: InputBorder.none,
//                             hintText: "What's on your mind?",
//                           ),
//                         ),
//                       ),
                  
//                     ),
                    
//                     IconButton(
                
//                       icon: const Icon(Icons.photo_camera, size: 30.0, color: Colors.green,),
//                       onPressed: () =>{},
//                     ),
                
//                   ],
//                   ),
                 
//                   Row(
//                     children:[
//                       Column(
//                         children:[

                          
//                         ]
//                       )
//                     ]
//                   ),
//               ],
              
//               )
     
//     ],
//       //story section
//             ),

// Divider(color: Colors.grey, height: 20.0, thickness: 1.5,),
//                  SizedBox(height: 10.0,),

//             Column(
              
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
                    

//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                child: Row(

//                   // scrollable row
                  

//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     // rectangle container with image from network
              
//                 Stack(
//   children: [
//     Container(
//       width: 100,
//       height: 200,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Column(
//         children: [
//           // Top Half - Image
//           Container(
//             width: 100,
//             height: 100, // half height
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
//               image: DecorationImage(
//                 image:  AssetImage('assets/images/sunny-beach-day.webp'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),

//           // Bottom Half - White
//           Container(
//             width: 100,
//             height: 100,
//             child: Center( 
//                      child: IconButton( 
//                            icon: 
//                        Icon(Icons.add_circle, size: 40.0, color: Colors.blue,), 
//                        onPressed: () =>{}, ), 
//                        ),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black26,
//                   blurRadius: 2,
//                   offset: Offset(0, 0),
//                 ),
//               ],
//               borderRadius:
//                   BorderRadius.vertical(bottom: Radius.circular(10)),
//             ),
//           ),
          
//         ],

        
//       ),
//     ),

//     // Center add icon
   

//     // Bottom create story text
//     Positioned(
//       bottom: 8,
//       left: 0,
//       right: 0,
//       child: Text(
//         "Create Story",
//         textAlign: TextAlign.center,
//         style: TextStyle(
//           color: Colors.black, // Better visibility on white
//           fontWeight: FontWeight.bold,
//         ),
//       ),
      

//     ),
//   ],
// ),

//  SizedBox(width: 10.0,),
//                       for(int i = 0; i <8; i++)
//                     Padding(padding:  const EdgeInsets.only(right: 10.0),
//                     child: GestureDetector(
//     onTap: () {
//       print("Story clicked!");
//       //  navigation or action here
//     },
//                     child:
//                  Stack(

                  
                  
//                   children: [
//                     Container(
//                               //add add-story icon at center of the container


//                       width: 100.0,
//                       height: 200.0,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10.0),
//                         image: DecorationImage(
//                           image: NetworkImage('https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFjZWJvb2t8ZW58MHx8MHx8fDA%3D&w=1000&q=80'),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                           // c
                             

//                     ),

//                      // Bottom "username" Text
//     Positioned(
//       bottom: 8,
//       left: 0,
//       right: 0,
//       child: Text(
//         "Gdsm",
//         textAlign: TextAlign.start,
//         style: TextStyle(
//           color: Colors.white,
//           fontWeight: FontWeight.bold,
//           shadows: [
//             Shadow(
//               blurRadius: 4,
//               color: Colors.black54,
//             ),
//           ],
//         ),
//       ),
//     ),

             
    
//                   ],
//                 ),
                    
                         
                    
//                ),)],
//             ),
//             ),



//               ]     
//     ),
//     Divider(color: Colors.grey, height: 20.0, thickness: 1.5,),
//                  SizedBox(height: 10.0,),
//               // ─────────── Facebook Post ───────────
            


                    

//               facebookPost(
//                 profileImage: 'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFjZWJvb2t8ZW58MHx8MHx8fDA%3D&w=1000&q=80',
//                 username: 'Gdsm',
//                 time: '2 hrs ago',
//                 postText: 'Enjoying the sunny weather at the beach!',
//                 postImage: 'https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhY2h8ZW58MHx8MHx8fDA%3D&w=1000&q=80',
//               ),

//                   ]
//                 ),
//               ),
//               ]
              
                
              


//     ),
//     ),
//     );

     
//    }
//  }