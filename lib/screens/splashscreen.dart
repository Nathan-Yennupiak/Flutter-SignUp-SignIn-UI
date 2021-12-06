// ignore_for_file: prefer_const_constructors
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:theconclave/screens/signup.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), ()=> Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) =>SignUpPage(),
    )));
  }
  final purpleColor = const Color(0xff7d3ac1);
  final darkTextColor = const Color(0xff590c82);
  final lightTextColor = const Color(0xff999999);
  final textFieldColor = const Color(0xffF5F6FA);
  final borderColor = const Color(0xffd9d9d9);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                          SizedBox(height: 70.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 100.w,),
                        Icon(Icons.admin_panel_settings_sharp,
                            size: 70.sp, color: darkTextColor),
                        Text(
                          "the Conclave ",
                          style: TextStyle(
                            fontSize: 30.sp,
                            color: darkTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                          CircularProgressIndicator(
                            backgroundColor: darkTextColor,
                            strokeWidth: 1,
                          ),

                  ]),
            ),

            );

}

  }
