
import'package:flutter/material.dart';
Widget googleButton() {
  return SizedBox(
    width: double.infinity,
    height: 45,
    child: OutlinedButton.icon(
      icon: Image.asset(
        'assets/images/icons8-google-48.png', // add Google logo asset
        height: 20,
      ),
      label: const Text(
        'Continue with Google',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.white,
        side: const BorderSide(color: Colors.grey),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  );
}
