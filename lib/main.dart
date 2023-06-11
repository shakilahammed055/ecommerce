
import 'package:ecommerce/ui/screens/verify_otp_screen.dart';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const CraftyBay());

}

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: EmailAuthenticationScreen(),
      home: VerifyOtpScreen(),
    );
  }
}