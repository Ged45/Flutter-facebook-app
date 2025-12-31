import 'package:flutter/material.dart';
import '../../home/widgets/googel_button.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';
class FacebookSignUpPage extends StatefulWidget {
  const FacebookSignUpPage({Key? key}) : super(key: key);

  @override
  State<FacebookSignUpPage> createState() => _FacebookSignUpPage();}

  class _FacebookSignUpPage extends State<FacebookSignUpPage>{
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
   final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1877F2),
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Full Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 15),

            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email or Phone',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 15),

            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1877F2),
                ),
                onPressed: () async {
                            
                         final auth = context.read<AuthProvider>();

                         final user = await auth.signup(
                           _emailController.text.trim(),
                           _passwordController.text.trim(),
                         );

                         if (user != null) {
                           await auth.sendVerificationEmail();

                         ScaffoldMessenger.of(context).showSnackBar(
                           const SnackBar(
                             content: Text("Verification email sent. Check your inbox."),
                           ),
                         );
                           // Navigate to home
                         } else {
                           ScaffoldMessenger.of(context).showSnackBar(
                             SnackBar(content: Text(auth.error ?? "Signup failed")),
                           );
                         }
                       },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const SizedBox(height: 20),

            googleButton( context),
          ],
        ),
      ),
    );
  }
}
