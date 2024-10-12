 import 'package:statussaver/Provider/bottom_nav_provider.dart';
import 'package:statussaver/Provider/getStatusProvider.dart';
import 'package:statussaver/Screen/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create:(_)=>GetStatusProvider()),

        ChangeNotifierProvider(create:(_)=>BottomNavProvider()),
        ChangeNotifierProvider(create:(_)=>GetStatusProvider()),
      ],
      child:const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );

  }
}


