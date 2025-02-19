import 'package:books_app/features/splash_feature/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BooksApp());
}
class BooksApp extends StatelessWidget {
  const BooksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(debugShowCheckedModeBanner: false,
    theme:ThemeData(fontFamily: 'DM Serif Display',scaffoldBackgroundColor: Colors.white),
       home: const SplashView(),
    );
  }
}
