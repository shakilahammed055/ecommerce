
import 'package:ecommerce/ui/screens/verify_otp_screen.dart';
import 'package:ecommerce/ui/widgets/app_elevated_button.dart';
import 'package:ecommerce/ui/widgets/app_textfield_widget.dart';

import 'package:flutter/material.dart';

class EmailAuthenticationScreen extends StatefulWidget {
  const EmailAuthenticationScreen({super.key});

  @override
  State<EmailAuthenticationScreen> createState() => _EmailAuthenticationScreenState();
}

class _EmailAuthenticationScreenState extends State<EmailAuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                Image.asset("assets/image/Shoezy.png",
                fit: BoxFit.scaleDown,width: 150,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text("Welcome Back",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Colors.black87,
                ), 
                
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text("Please enter your email address",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0XFFa6a6a6),
                  letterSpacing: 0.5
                ),
                ),
                const SizedBox(
                  height: 16,
                ),
                
                AppTextfield(
                  controller: TextEditingController(),
                  hintText: "Email",
                ),
                const SizedBox(
                  height: 20,
                ),
                AppElevatedButton(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const VerifyOtpScreen()));
                  },
                  text: "Next",
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}


