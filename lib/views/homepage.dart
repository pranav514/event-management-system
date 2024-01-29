import 'package:ems/auth.dart';
import 'package:ems/constants/colors.dart';
import 'package:ems/saved_data.dart';
import 'package:ems/views/login.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
   String userName = "User";
  @override
  void initState() {
    userName = SavedData.getUserName();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () {
                logoutUser();
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
              icon: Icon(
                Icons.logout,
                color: KLightBlue,
                size: 30,
              ))
        ],
      ),
      body: Text(
        "Hi ${userName} 👋",
        style: TextStyle(color: KLightBlue, fontSize: 32, fontWeight: FontWeight.w600),
      ),
    );
  }
}
