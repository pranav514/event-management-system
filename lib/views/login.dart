import 'package:ems/constants/colors.dart';
import 'package:ems/containers/custom_input_form.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              "Login",
              style: TextStyle(color: KLightBlue, fontSize: 32, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 8,
            ),
            CustomInputForm(icon: Icons.email_outlined, label: "Email", hint: "Enter your Email"),
            SizedBox(
              height: 8,
            ),
            CustomInputForm(icon: Icons.lock_outline_rounded, label: "Password", hint: "Enter your Password"),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forget Password",
                  style: TextStyle(color: KLightBlue, fontSize: 16, fontWeight: FontWeight.w300),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
                style: OutlinedButton.styleFrom(
                  foregroundColor: KLightBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Create an New Acoount ?",style: TextStyle(color: KLightBlue,
                fontSize: 16,fontWeight: FontWeight.w300),),
                SizedBox(width: 4,),
                Text("Sign Up",
                style: TextStyle(color: KLightBlue,
                fontSize: 16,fontWeight: FontWeight.w600),
                )
              ],
              
            )
          ],
        ),
      ),
    );
  }
}
