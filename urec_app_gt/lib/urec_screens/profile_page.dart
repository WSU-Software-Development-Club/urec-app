import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.white), // Close button
          iconSize: 32,
          onPressed: () {
            Navigator.pop(context); // Handle close action
          },
        ),
        title: const Text("My Profile", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.red[700],
      ),
      body: ListView(
        children: [
          // Profile Header
          Container(
            color: Colors.red[700],
            padding: const EdgeInsets.all(16),
            child: const Row(
              children: [
                // User profile photo
                CircleAvatar(
                  backgroundImage: AssetImage('assets/butch.png'), // Replace with the correct image path
                  radius: 40,
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Users username
                    Text(
                      'Butch T. Cougar',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Users email
                    Text(
                      'butch.events@wsu.edu',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Menu Options
          ListTile(
            leading: const Icon(Icons.person_outline, color: Colors.black),
            title: const Text('Profile'),
            onTap: () {
              // Navigate to profile
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined, color: Colors.black),
            title: const Text('Settings'),
            onTap: () {
              // Navigate to settings
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications_outlined, color: Colors.black),
            title: const Text('Notifications'),
            onTap: () {
              // Navigate to notifications
            },
          ),
          ListTile(
            leading: const Icon(Icons.help_outline, color: Colors.black),
            title: const Text('Help and Support'),
            onTap: () {
              // Navigate to help and support
            },
          ),
          ListTile(
            leading: const Icon(Icons.privacy_tip_outlined, color: Colors.black),
            title: const Text('Privacy Policy'),
            onTap: () {
              // Navigate to privacy policy
            },
          ),
          ListTile(
            leading: const Icon(Icons.article_outlined, color: Colors.black),
            title: const Text('Terms of Service'),
            onTap: () {
              // Navigate to terms of service
            },
          ),
          const Divider(indent: 15, endIndent: 15,),
          ListTile(
            leading: const Icon(Icons.logout_outlined, color: Colors.black),
            title: const Text('Logout'),
            onTap: () {
              // Handle logout
            },
          ),
          ListTile(
            leading: const Icon(Icons.delete_outlined, color: Colors.red),
            title: const Text(
              'Delete Account',
              style: TextStyle(color: Colors.red),
            ),
            onTap: () {
              // Handle account deletion
            },
          ),
          const Divider(indent: 15, endIndent: 15,),
          // Footer
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                // App version
                Text(
                  'v 0.0.1',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(height: 8,),
                // Copyright text
                Text(
                  'Copyright © 2024 SDC Club, LLC.',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(height: 8,),
                Text(
                  'All Rights Reserved',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}