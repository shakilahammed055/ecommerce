import 'package:ecommerce/ui/screens/completeprofile.dart';
import 'package:ecommerce/ui/utils/app_colors.dart';
import 'package:ecommerce/ui/widgets/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({Key? key}) : super(key: key);

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
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
                Text("Enter OTP Code",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                  ),

                ),
                const SizedBox(
                  height: 8,
                ),
                const Text("A 4 Digits Number sent to your email",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0XFFa6a6a6),
                      letterSpacing: 0.5
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                PinCodeTextField(
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(6),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                    inactiveFillColor: Colors.white,
                    selectedFillColor: Colors.white,
                    selectedColor: Colors.lightGreen,
                    inactiveColor: AppColor.PrimaryColor,
                  ),
                  animationDuration:const Duration(milliseconds: 300),
                  backgroundColor: Colors.transparent,
                  enableActiveFill: true,
                  onCompleted: (v) {

                  },
                  onChanged: (value) {

                  },
                  beforeTextPaste: (text) {
                    return true;
                  }, appContext: context,
                ),

                const SizedBox(
                  height: 20,
                ),
                AppElevatedButton(
                  onTap: (){
                    Navigator.push(
                      context,MaterialPageRoute(builder: (context)=>const CompleteProfileScreen())
                    );
                  },
                  text: "Next",
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(text: TextSpan(
                  text: "This code will expire in ",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  children: [
                    TextSpan(
                      text: "120s",
                      style: TextStyle(
                        color: AppColor.PrimaryColor,
                      )
                    )
                  ]
                ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(onPressed: (){},
                    child: const Text('Resend Code'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
