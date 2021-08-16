import 'package:flutter/material.dart';
import 'package:loono/ui/widgets/login_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                'Vítej zpátky ve společnosti (ne)obyčejných hrdinů',
                style: TextStyle(fontSize: 24),
              ),
            ),
            Image.asset(
              'assets/images/people.png', //TODO obrazek potrabuji lepsi format
              width: MediaQuery.of(context).size.width,
              height: 250,
            ),
            const SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: LoginButton(
                text: 'Přihlásit pomocí Apple',
                icon: 'apple_logo.svg',
                callback: () {},
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: LoginButton(
                text: 'Přihlásit pomocí Google účtu',
                icon: 'google_logo.svg',
                color: const Color(0xFF4285F4),
                callback: () {},
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Začít od začátku',
                style: TextStyle(color: Color(0xFF1A1919)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
