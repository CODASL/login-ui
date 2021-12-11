import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? ontap;
  const CustomButton({Key? key, this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      color: Colors.blue,
      child: MaterialButton(
        height: 50,
        minWidth: 200,
        child: const Text(
          "Login",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: ontap,
      ),
    );
  }
}
