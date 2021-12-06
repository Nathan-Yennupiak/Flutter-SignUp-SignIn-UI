// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theconclave/screens/splashscreen.dart';

void main() {

  //LOCKING ORIENTATION TO ONLY PORTRAIT
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((value) => runApp(TheConclaveApp()
  ));
}

class TheConclaveApp extends StatelessWidget {
  const TheConclaveApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: ()=> MaterialApp(
      title: 'My SignUp Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.nunitoTextTheme(
            Theme.of(context).textTheme,
          )
      ),
      home: SplashScreen(),
    ),
      designSize:  Size(360, 690),
    );
  }
}


