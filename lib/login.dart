import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/home.dart';

import 'Widgets/custom_button.dart';
import 'Widgets/custom_textfield.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Login",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CustomTextFormField(
                hintText: 'Email',
                prefixIcon: Icons.mail,
                suffixIcon: Icons.done,
                isPassword: false,
                controller: emailController,
              ),
              CustomTextFormField(
                hintText: 'Password',
                prefixIcon: Icons.lock,
                suffixIcon: Icons.visibility,
                isPassword: true,
                controller: passwordController,
              ),
              CustomButton(
                ontap: () {
                  setState(() {
                    debugPrint(emailController.text);
                    debugPrint(passwordController.text);
                  });
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return Home(
                      email: emailController.text,
                      password: passwordController.text,
                    );
                  }));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
