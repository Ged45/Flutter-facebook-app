import 'package:flutter/material.dart';
import 'sign_up_screen.dart';
import '../../home/widgets/googel_button.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart'; 
import'../../home/screens/home_screen.dart';


class FacebookLoginPage extends StatefulWidget {
 const FacebookLoginPage({Key? key}) : super(key: key);
  @override

  State<FacebookLoginPage> createState() => _FacebookLoginPage();}

  class _FacebookLoginPage extends State<FacebookLoginPage>{
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
 

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1877F2),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.facebook, size: 80, color: Colors.white),
            const SizedBox(height: 40),

            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'Email or Phone',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 16),

            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
               onPressed: () async {
    final auth = context.read<AuthProvider>();

    final user = await auth.login(
      _emailController.text.trim(),
      _passwordController.text.trim(),
    );

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
        SnackBar(content: Text(auth.error ?? "Login failed")),
      );
    }
  },
                child: const Text(
                  'Log In',
                  style: TextStyle(
                    color: Color(0xFF1877F2),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            googleButton(context),

            const SizedBox(height: 20),

            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FacebookSignUpPage(),
                  ),
                );
              },
              child: const Text(
                'Create New Account',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
