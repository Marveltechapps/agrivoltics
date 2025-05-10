import 'package:agri_voltics/screens/careers.dart';
import 'package:agri_voltics/screens/communities.dart';
import 'package:agri_voltics/screens/contactus.dart';
import 'package:agri_voltics/screens/home_screen.dart';
import 'package:agri_voltics/screens/integrated_farming.dart';
import 'package:agri_voltics/screens/land_partnership.dart';
import 'package:agri_voltics/screens/solar_power.dart';
import 'package:agri_voltics/screens/solutions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(414, 896),
        minTextAdapt: true,
        splitScreenMode: true, // your base design
        builder: (context, child) => MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              // This is the theme of your application.
              //
              // TRY THIS: Try running your application with "flutter run". You'll see
              // the application has a purple toolbar. Then, without quitting the app,
              // try changing the seedColor in the colorScheme below to Colors.green
              // and then invoke "hot reload" (save your changes or press the "hot
              // reload" button in a Flutter-supported IDE, or press "r" if you used
              // the command line to start the app).
              //
              // Notice that the counter didn't reset back to zero; the application
              // state is not lost during the reload. To reset the state, use hot
              // restart instead.
              //
              // This works for code too, not just values: Most code changes can be
              // tested with just a hot reload.
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            ),
            home: Careers(),
            debugShowCheckedModeBanner: false));
  }
}
