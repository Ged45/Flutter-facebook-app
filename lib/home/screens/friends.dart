import 'package:flutter/material.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Friends"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            "Friend Requests",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),

          _friendRequestTile(
            name: "Alex Johnson",
            mutual: "5 mutual friends",
          ),
          _friendRequestTile(
            name: "Sarah Williams",
            mutual: "2 mutual friends",
          ),

          const SizedBox(height: 24),
          const Text(
            "People You May Know",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),

          _suggestedFriendTile("Michael Brown"),
          _suggestedFriendTile("Emily Davis"),
        ],
      ),
    );
  }

  static Widget _friendRequestTile({
    required String name,
    required String mutual,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: ListTile(
        leading: const CircleAvatar(radius: 24,
        backgroundImage:
                  AssetImage('assets/images/icons8-profile-avatar-66.png'),
        ),
        title: Text(name),
        subtitle: Text(mutual),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("Confirm"),
            ),
            const SizedBox(width: 8),
            OutlinedButton(
              onPressed: () {},
              child: const Text("Delete"),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _suggestedFriendTile(String name) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: ListTile(
        leading: const CircleAvatar(radius: 24,
        backgroundImage:
                  AssetImage('assets/images/icons8-profile-avatar-66.png'),
        ),
        title: Text(name),
        trailing: ElevatedButton(
          onPressed: () {},
          child: const Text("Add Friend"),
        ),
      ),
    );
  }
}


