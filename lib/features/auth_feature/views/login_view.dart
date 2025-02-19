import 'package:books_app/features/auth_feature/register_view.dart';
import 'package:books_app/widgets/custom_button.dart';
import 'package:books_app/widgets/custom_text_form_field.dart';

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
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
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
              CustomTextFormField(hintText: 'Enter your email',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
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
                validator: (value) {
                  if(value==null||value.isEmpty){
                    return 'Please enter your password';
                  }
                  return null;
                },
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
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    // Perform login action
                  }
                },
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account?',
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const RegisterView()));
                    },
                    child: const Text(
                      'Register now',
                      style: TextStyle(color: Color(0xffBFA054)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
