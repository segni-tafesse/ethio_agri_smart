import 'package:ethio_agri_smart/main.dart';
import 'package:ethio_agri_smart/security_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _notificationEnabled = true;

  void _handleNotificationSwitch(bool value) {
    setState(() {
      _notificationEnabled = value;
    });
    // Perform any other actions based on the switch state change
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            trailing: Switch(
              value: _notificationEnabled,
              onChanged: _handleNotificationSwitch,
            ),
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Select Language'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: Text('English'),
                          onTap: () {
                            // Handle English language selection
                            Navigator.pop(context); // Close the dialog
                          },
                        ),
                        ListTile(
                          title: Text('Amharic'),
                          onTap: () {
                            // Handle Amharic language selection
                            Navigator.pop(context); // Close the dialog
                          },
                        ),
                        ListTile(
                          title: Text('Afaan Oromo'),
                          onTap: () {
                            // Handle Afaan Oromo language selection
                            Navigator.pop(context); // Close the dialog
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.security),
            title: Text('Security'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecuritySettingsPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.light_mode_outlined),
            title: Text('Theme'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Confirm Logout'),
                    content: Text('Are you sure you want to exit the app?'),
                    actions: [
                      TextButton(
                        child: Text('Cancel'),
                        onPressed: () {
                          Navigator.pop(context); // Close the dialog
                        },
                      ),
                      TextButton(
                        child: Text('Logout'),
                        onPressed: () {
                          SystemNavigator.pop(); // Exit the app
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
