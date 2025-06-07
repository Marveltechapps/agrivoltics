import 'package:agri_voltics/providers/navigationprovider.dart';
import 'package:agri_voltics/screens/careers.dart';
import 'package:agri_voltics/screens/communities.dart';
import 'package:agri_voltics/screens/contactus.dart';
import 'package:agri_voltics/screens/faq.dart';
import 'package:agri_voltics/screens/home_screen.dart';
import 'package:agri_voltics/screens/integrated_farming.dart';
import 'package:agri_voltics/screens/land_partnership.dart';
import 'package:agri_voltics/screens/privacy_policy.dart';
import 'package:agri_voltics/screens/projects.dart';
import 'package:agri_voltics/screens/solar_power.dart';
import 'package:agri_voltics/screens/solutions.dart';
import 'package:agri_voltics/screens/termsandconditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => NavigationProvider(),
      ),
    ], child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: '/about',
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: '/landpartner',
        builder: (context, state) => LandPartnership(),
      ),
      GoRoute(
        path: '/solarpower',
        builder: (context, state) => SolarPower(),
      ),
      GoRoute(
        path: '/integratedfarm',
        builder: (context, state) => IntegratedFarming(),
      ),
      GoRoute(
        path: '/solutions',
        builder: (context, state) => Solutions(),
      ),
      GoRoute(
        path: '/contact',
        builder: (context, state) => Contactus(),
      ),
      GoRoute(
        path: '/communities',
        builder: (context, state) => Communities(),
      ),
      GoRoute(
        path: '/careers',
        builder: (context, state) => Careers(),
      ),
      GoRoute(
        path: '/projects',
        builder: (context, state) => Projects(),
      ),
      GoRoute(
        path: '/termsconditions',
        builder: (context, state) => Termsandconditions(),
      ),
      GoRoute(
        path: '/privacypolicy',
        builder: (context, state) => PrivacyPolicy(),
      ),
      GoRoute(
        path: '/faq',
        builder: (context, state) => Faq(),
      ),
    ],
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(414, 896),
        minTextAdapt: true,
        splitScreenMode: true, // your base design
        builder: (context, child) => MaterialApp.router(
            title: 'Agrivoltaics',
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
            // routerConfig: _router,
            routerDelegate: _router.routerDelegate,
            routeInformationParser: _router.routeInformationParser,
            routeInformationProvider: _router.routeInformationProvider,
            debugShowCheckedModeBanner: false));
  }
}
