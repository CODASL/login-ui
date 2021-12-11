import 'package:flutter/material.dart';

SnackBar snackBar(String data) {
  return SnackBar(
    content: Text(data),
    backgroundColor: Colors.blue,
    action: SnackBarAction(
      label: 'close',
      onPressed: () {
        SnackBarClosedReason.hide;
      },
      textColor: Colors.white,
    ),
  );
}
