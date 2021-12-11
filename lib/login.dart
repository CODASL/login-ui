import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/Widgets/snackbar.dart';
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
    String testMail = "example@gmail.com";
    String testPass = "example123";
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
                  if (emailController.text == testMail &&
                      passwordController.text == testPass) {
                    setState(() {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(snackBar("Login Successed"));

                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return Home(
                          email: emailController.text,
                          password: passwordController.text,
                        );
                      }));
                    });
                  } else if (emailController.text.isEmpty &&
                      passwordController.text.isEmpty) {
                    setState(() {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(snackBar("please enter credentials"));
                    });
                  } else {
                    setState(() {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(snackBar("Invalid Email or Password"));
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
