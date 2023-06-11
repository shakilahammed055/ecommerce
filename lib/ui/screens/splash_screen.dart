import 'package:ecommerce/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(  
          
          children: [  
            const Spacer(),
            Image.asset(
              'assets/image/Shoezy.png',
              width: 150, fit: BoxFit.scaleDown,
              ),
              const Spacer(),
              
              CircularProgressIndicator(
                color: AppColor.PrimaryColor,
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                "version 1.0.0",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
      
      
          ],
        ),
      ),
    );
  }
}