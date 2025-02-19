import 'package:books_app/widgets/custom_button.dart';
import 'package:books_app/widgets/login_way_item.dart';
import 'package:books_app/widgets/login_ways.dart';
import 'package:books_app/widgets/pop_container.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                PopContainer(),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Welcome back! Glad to see you, Again!',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffE8ECF4),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Enter your email',
                  hintStyle: const TextStyle(color: Colors.grey)),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              obscureText: obscureText,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffE8ECF4),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      icon: Icon(obscureText
                          ? Icons.visibility
                          : Icons.visibility_off)),
                  hintText: 'Enter your password',
                  hintStyle: const TextStyle(color: Colors.grey)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey),
                    ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              title: 'Login',
              onTap: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 1,
                  decoration: const BoxDecoration(color: Color(0xffE8ECF4)),
                ),
                const Text(
                  'Or Login with',
                  style: TextStyle(color: Colors.grey),
                ),
                Container(
                  width: 120,
                  height: 1,
                  decoration: const BoxDecoration(color: Color(0xffE8ECF4)),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const LoginWays(),
            const SizedBox(
              height: 40,

            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                      'Don\'t have an account?',
                      
                    ),
                    TextButton(onPressed: () {
                      
                    },
                      child: const Text(
                        'Register now',style: TextStyle(color: Color(0xffBFA054)),
                        
                      ),
                    ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
