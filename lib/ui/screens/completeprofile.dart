
import 'package:ecommerce/ui/screens/main_bottom_navigation_bar.dart';
import 'package:ecommerce/ui/widgets/app_elevated_button.dart';
import 'package:ecommerce/ui/widgets/app_textfield_widget.dart';
import 'package:flutter/material.dart';


class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                Image.asset("assets/image/Shoezy.png",
                  fit: BoxFit.scaleDown,width: 150,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text("Complete Profile",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                  ),

                ),
                const SizedBox(
                  height: 8,
                ),
                const Text("Get started with us with your details",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0XFFa6a6a6),
                      letterSpacing: 0.5
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),

                AppTextfield(controller: TextEditingController(),
                    hintText: "First Name",
                ),
                const SizedBox(
                  height: 8,
                ),
                AppTextfield(controller: TextEditingController(),
                  hintText: "Last name",
                ),
                const SizedBox(
                  height: 8,
                ),
                AppTextfield(controller: TextEditingController(),
                  hintText: "Mobile",
                ),
                const SizedBox(
                  height: 8,
                ),
                AppTextfield(controller: TextEditingController(),
                  hintText: "City",
                ),
                const SizedBox(
                  height: 8,
                ),
                AppTextfield(controller: TextEditingController(),
                  hintText: "Shipping address",
                  maxLines: 4,
                ),
                const SizedBox(
                  height: 8,
                ),



                AppElevatedButton(
                  onTap: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> MainBottomNavigationBar()),
                        (route)=> false
                    );
                  },
                  text: "Complete",
                ),
                const SizedBox(
                  height: 20,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
