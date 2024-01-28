import 'package:ems/constants/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      foregroundColor: Colors.transparent,
      actions: [IconButton(onPressed: (){}, icon: Icon(Icons.logout,
      color: KLightBlue,size: 30,))

      ],
      ),
      body: Text("Hi User 👋",style: TextStyle(
        color: KLightBlue,
        fontSize: 32,
        fontWeight: FontWeight.w600
      ),),
    );
  }
}