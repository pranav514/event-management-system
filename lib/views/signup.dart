import 'package:ems/auth.dart';
import 'package:ems/constants/colors.dart';
import 'package:ems/containers/custom_input_form.dart';
import 'package:ems/views/login.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 80,
            ),
            Text(
              "Sign Up",
              style: TextStyle(color: KLightBlue, fontSize: 32, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 8,
            ),
            CustomInputForm(controller: _nameController, icon: Icons.person_outline, label: "Name", hint: "Enter your Name"),
            SizedBox(
              height: 8,
            ),
            CustomInputForm(controller: _emailController, icon: Icons.email_outlined, label: "Email", hint: "Enter your Email"),
            SizedBox(
              height: 8,
            ),
            CustomInputForm(obscureText: true, controller: _passwordController, icon: Icons.lock_outline_rounded, label: "Password", hint: "Enter your Password"),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  createUser(_nameController.text, _emailController.text, _passwordController.text).then((value) {
                    if (value == "success") {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Account Created")));
                      Future.delayed(Duration(seconds: 2), () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage())));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value)));
                    }
                  });
                },
                child: Text("Sign Up"),
                style: OutlinedButton.styleFrom(foregroundColor: KLightBlue, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            GestureDetector(
              // onTap: () => Navigator.push(context,
              // MaterialPageRoute(builder: (context)=> LoginPage())
              // ),
              onTap: ()=> Navigator.pop(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(color: KLightBlue, fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Login",
                    style: TextStyle(color: KLightBlue, fontSize: 16, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
