import 'package:books_app/widgets/custom_button.dart';
import 'package:books_app/widgets/custom_text_form_field.dart';
import 'package:books_app/widgets/pop_container.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Form(key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
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
                    'Forgot Password?',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Don\'t worry! It occurs. Please enter the email address linked with your account.',
                    style: TextStyle( fontSize: 15,color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                   CustomTextFormField(hintText: 'Enter your email',
                  validator:  (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },),
                  const SizedBox(
                    height: 20,
                  ),
                   CustomButton(title: 'Send Code',onTap: () {
                    if (_formKey.currentState!.validate()) {
                    // Perform login action
                  }
                  },),
                  const Spacer(),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    const Text('Remember Password?'),
                    TextButton(onPressed: (){}, child: const Text('Login',
                     style: TextStyle(color: Color(0xffBFA054))))
                  ],)
          ],),
        ),
      ),
    );
  }
}