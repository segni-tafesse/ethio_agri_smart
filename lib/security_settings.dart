import 'package:flutter/material.dart';

class SecuritySettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Security Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Change Password'),
            leading: Icon(Icons.lock),
            onTap: () {
              // Handle "Change Password" action
            },
          ),
          ListTile(
            title: Text('Biometric Authentication'),
            leading: Icon(Icons.fingerprint),
            trailing: Switch(
              value: true, // Replace with your actual logic
              onChanged: (bool value) {
                // Handle switch state change
              },
            ),
          ),
          // Add more security settings options as needed
        ],
      ),
    );
  }
}
