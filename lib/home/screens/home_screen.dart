import 'package:flutter/material.dart';
import '../widgets/post.dart';
import './friends.dart';
import './notification.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildBody() {
    switch (_selectedIndex) {
      case 0:
        return _HomeFeed(); // extracted feed
      case 1:
        return const FriendsScreen();
      case 2:
        return const NotificationsScreen();
      default:
        return _HomeFeed();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'facebook',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.add, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),

      body: Column(
        children: [
          // 🔹 Top tab bar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home, size: 30.0,
                  color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
                ),
                onPressed: () => _onTabSelected(0),
              ),
              IconButton(
                icon: Icon(
                  Icons.person, size: 30.0,
                  color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
                ),
                onPressed: () => _onTabSelected(1),
              ),
              IconButton(
                icon: Icon(
                  Icons.notifications, size: 30.0,
                  color: _selectedIndex == 2 ? Colors.blue : Colors.grey,
                ),
                onPressed: () => _onTabSelected(2),
              ),
               IconButton(icon: const Icon(Icons.message_rounded, size: 30.0, color: Colors.grey,), onPressed: () =>{}),
               IconButton(icon: const Icon(Icons.video_collection, size: 30.0, color: Colors.grey,), onPressed: () =>{}),
            ],
          ),

          const Divider(height: 1),

          // 🔹 Body switching
          Expanded(
            child: IndexedStack(
              index: _selectedIndex,
              children: const [
                _HomeFeed(),
                FriendsScreen(),
                NotificationsScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class _HomeFeed extends StatelessWidget {
  const _HomeFeed();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundImage:
                  AssetImage('assets/images/icons8-profile-avatar-66.png'),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "What's on your mind?",
                  ),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.photo_camera, color: Colors.green),
              onPressed: () {},
            ),
          ],
        ),

        const Divider(),
        Column(
              
               mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                    

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
               child: Row(

                  // scrollable row
                  

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // rectangle container with image from network
              
                Stack(
  children: [
    Container(
      width: 100,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          // Top Half - Image
          Container(
            width: 100,
            height: 100, // half height
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              image: DecorationImage(
                image:  AssetImage('assets/images/sunny-beach-day.webp'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Bottom Half - White
          Container(
            width: 100,
            height: 100,
            child: Center( 
                     child: IconButton( 
                           icon: 
                       Icon(Icons.add_circle, size: 40.0, color: Colors.blue,), 
                       onPressed: () =>{}, ), 
                       ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 2,
                  offset: Offset(0, 0),
                ),
              ],
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(10)),
            ),
          ),
          
        ],

        
      ),
    ),

    // Center add icon
   

    // Bottom create story text
    Positioned(
      bottom: 8,
      left: 0,
      right: 0,
      child: Text(
        "Create Story",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black, // Better visibility on white
          fontWeight: FontWeight.bold,
        ),
      ),
      

    ),
  ],
),

 SizedBox(width: 10.0,),
                      for(int i = 0; i <8; i++)
                    Padding(padding:  const EdgeInsets.only(right: 10.0),
                    child: GestureDetector(
    onTap: () {
      print("Story clicked!");
      //  navigation or action here
    },
                    child:
                 Stack(

                  
                  
                  children: [
                    Container(
                              


                      width: 100.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage('assets/images/person-forest-outdoor-standing.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                          // c
                             

                    ),

                     // Bottom "username" Text
    Positioned(
      bottom: 8,
      left: 0,
      right: 0,
      child: Text(
        "Gdsm",
        textAlign: TextAlign.start,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          shadows: [
            Shadow(
              blurRadius: 4,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    ),

             
    
                  ],
                ),
                    
                         
                    
               ),)],
            ),
            ),



              ]     
    ),

        facebookPost(
          profileImage:

            'assets/images/person-forest-outdoor-standing.jpg',
          username: 'Gdsm',
          time: '2 hrs ago',
          postText: 'Enjoying the sunny weather at the beach!',
          postImage:
              'assets/images/sunny-beach-day.webp',
        ),
      ],
    );
  }
}
