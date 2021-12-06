// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:theconclave/screens/signup.dart';

class LoginPage extends StatelessWidget {
  final purpleColor = const Color(0xff9957db);
  final darkTextColor = const Color(0xff590c82);
  final lightTextColor = const Color(0xff999999);
  final textFieldColor = const Color(0xffF5F6FA);
  final borderColor = const Color(0xffD9D9D9);

  const LoginPage({Key? key}) : super(key: key);
  //TEXT-FIELD FUNCTION
  Widget getTextField({required String hint}) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        filled: true,
        fillColor: textFieldColor,
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100.h),
                Row(
                  children: [
                    Icon(Icons.phonelink_lock_rounded,
                        size: 50.sp, color: darkTextColor),
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 35.sp,
                        color: darkTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                SizedBox(
                  height: 24.h,
                ),
                getTextField(hint: "Email"),
                SizedBox(
                  height: 16.h,
                ),
                getTextField(hint: "Password"),
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                  height: 16.h,
                ),

                //CREATE ACCOUNT BUTTON
                SizedBox(
                  width: double.infinity,
                  height: 40.h,
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(purpleColor),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: Wrap(
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: lightTextColor,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpPage(),
                              ));
                        },
                        child: Text(
                          " SignUp",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: purpleColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
                Row(
                  children: [
                    Expanded(
                      child: Divider(),
                    ),
                    Text("or Login via",style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500, color: lightTextColor),),
                    Expanded(
                      child: Divider(),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),

                //GOOGLE SIGNIN
                SizedBox(
                  width: double.infinity,
                  height: 40.h,
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(darkTextColor),
                      side: MaterialStateProperty.all(BorderSide(color: borderColor)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset('images/Google.png', scale: 0.6,),
                        SizedBox(width: 10.h),
                        Text(
                          "Google",
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
