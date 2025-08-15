import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void startVideoCall(String userName) {
    // TODO: Integrate your video call SDK (Agora, WebRTC, etc.)
    debugPrint("Starting video call with $userName...");
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> users = [
      {"name": "Alice", "status": "online"},
      {"name": "Bob", "status": "offline"},
      {"name": "Charlie", "status": "online"},
      {"name": "David", "status": "offline"},
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
        elevation: 0,
        title: const Text('Users', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: users.length,
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          final user = users[index];
          final firstLetter = user["name"].substring(0, 1).toUpperCase();
          final isOnline = user["status"] == "online";

          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            margin: const EdgeInsets.symmetric(vertical: 6),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 12,
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.blue.shade100,
                child: Text(
                  firstLetter,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              title: Text(
                user["name"],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isOnline ? Colors.green : Colors.red,
                    ),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    isOnline ? "Online" : "Offline",
                    style: TextStyle(
                      color: isOnline ? Colors.green : Colors.red,
                    ),
                  ),
                ],
              ),
              trailing: isOnline
                  ? IconButton(
                      icon: const Icon(Icons.video_call, color: Colors.green),
                      onPressed: () {
                        startVideoCall(user["name"]);
                      },
                    )
                  : null,
              onTap: () {
                // Handle tapping on user card (optional)
              },
            ),
          );
        },
      ),
    );
  }
}
