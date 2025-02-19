import 'package:books_app/features/splash_feature/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BooksApp());
}
class BooksApp extends StatelessWidget {
  const BooksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false,
       home: SplashView(),
    );
  }
}
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}