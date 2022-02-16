import 'package:fitness_app/widgets/buttons/continue_with_email.dart';
import 'package:fitness_app/widgets/buttons/continue_with_google.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = 'welcome_screen';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const WelcomeScreen(),
    );
  }

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/onboard_1.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            children: [
              const Spacer(),
              Image.asset(
                "assets/images/Logo.png",
                width: 100,
              ),
              const SizedBox(height: 30),
              Text(
                "Welcome to Fitooze",
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      color: Colors.white,
                    ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                child: Text(
                  "Best app for  building your fitness  from home",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.white,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),
              const ContinueWithEmail(),
              const ContinueWithGoogle(),
            ],
          ),
        ),
      ),
    );
  }
}
