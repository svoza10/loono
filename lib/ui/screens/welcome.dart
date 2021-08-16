import 'package:flutter/material.dart';
import 'package:loono/ui/widgets/onboarding/onboarding_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEF2E9),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/welcome-logo.png',
                width: 172,
                height: 213,
              ),
              const SizedBox(height: 50),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 60.0),
                child: Text(
                  'Chraň své zdraví včasnou prevencí',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF1A1919),
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              const SizedBox(height: 70),
              OnboardingButton(
                label: 'Začít',
                active: true,
                onClick: () {
                  Navigator.pushNamed(context, '/onboarding/carousel');
                },
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/onboarding/carousel');
                },
                child: const Text(
                  'Už mám účet',
                  style: TextStyle(color: Color(0xFF1A1919)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
