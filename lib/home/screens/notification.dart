import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: const [
          
          _NotificationTile(
            icon: Icons.person_add,
            text: "John sent you a friend request",
            time: "2h ago",
            unread: true,
          ),
          _NotificationTile(
            icon: Icons.thumb_up,
            text: "Sarah liked your post",
            time: "5h ago",
            unread: true,
          ),
          _NotificationTile(
            icon: Icons.comment,
            text: "Michael commented on your photo",
            time: "1d ago",
            unread: false,
          ),
          _NotificationTile(
            icon: Icons.group,
            text: "You have new group suggestions",
            time: "2d ago",
            unread: false,
          ),
        ],
      ),
    );
  }
}

class _NotificationTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final String time;
  final bool unread;

  const _NotificationTile({
    required this.icon,
    required this.text,
    required this.time,
    required this.unread,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: unread ? Colors.blue.shade50 : null,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(
          text,
          style: TextStyle(
            fontWeight: unread ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        subtitle: Text(time),
        trailing:
            unread ? const Icon(Icons.circle, size: 10, color: Colors.blue) : null,
      ),
    );
  }
}
