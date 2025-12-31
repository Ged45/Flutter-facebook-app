
import 'package:facebook/home/screens/home_screen.dart';
import'package:flutter/material.dart';
import'package:provider/provider.dart';
import'../../auth/providers/auth_provider.dart';



Widget googleButton(BuildContext context) {
  return SizedBox(
    width: double.infinity,
    height: 45,
    child: OutlinedButton.icon(
      icon: Image.asset(
        'assets/images/icons8-google-48.png', //  Google logo asset
        height: 20,
      ),
      label: const Text(
        'Continue with Google',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
     onPressed: () async {
                          // Handle Google Sign-In
                          final auth = context.read<AuthProvider>();
                              if (auth.isLoading) return;
                              final user = await auth.googleSignIn();
    
                              if (user != null) {
                                  // Navigate to home
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Home(),
                                    ),
                                  );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(auth.error ?? "Google Sign-In failed")),
                                );
                              }
                        },
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
