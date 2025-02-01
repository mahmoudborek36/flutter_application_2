import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileScreen(),
  ));
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.search, color: Colors.black), onPressed: () {}),
        actions: [IconButton(icon: Icon(Icons.sync, color: Colors.black), onPressed: () {})],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/profile.jpg'), // Replace with actual image
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Sayed Abdul-Aziz',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'sayed@gmail.com',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            _buildProfileOption('My orders', 'Already have 10 orders', context),
            _buildProfileOption('Shipping Addresses', '03 Addresses', context),
            _buildProfileOption('Payment Method', 'You have 2 cards', context),
            _buildProfileOption('My reviews', 'Reviews for 5 items', context),
            _buildProfileOption('Setting', 'Notification, Password, FAQ, Contact', context),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileOption(String title, String subtitle, BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(subtitle, style: TextStyle(color: Colors.grey)),
          trailing: Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {},
        ),
        Divider(thickness: 1, height: 10, color: Colors.grey.shade300),
      ],
    );
  }
}