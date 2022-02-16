// ignore_for_file: deprecated_member_use
import 'package:fitness_app/screens/signin/signin_screen.dart';
import 'package:fitness_app/widgets/buttons/sign_up_button.dart';
import 'package:fitness_app/widgets/form/email_input.dart';
import 'package:fitness_app/widgets/form/password_input.dart';
import 'package:fitness_app/widgets/form/phone_input.dart';
import 'package:fitness_app/widgets/form/text_field_input.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = 'sign_up_screen';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const SignUpScreen(),
    );
  }

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.black,
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 40,
                      horizontal: 100,
                    ),
                    child: Center(
                      child: Text(
                        "Sign up and starting workout",
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const TextFieldInput(
                    inputType: TextInputType.name,
                    inputAction: TextInputAction.next,
                  ),
                  const EmailInput(
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next,
                  ),
                  const PhoneInput(
                    inputType: TextInputType.phone,
                    inputAction: TextInputAction.next,
                  ),
                  const PasswordInput(
                    inputType: TextInputType.name,
                    inputAction: TextInputAction.done,
                    suffixIcon: Icons.visibility_off,
                  ),
                  Text(
                    "By signing up you agree to our Term of use and privacy notice",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(fontSize: 13, fontWeight: FontWeight.normal),
                  ),
                  SignUpButton(formKey: _formKey),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already registered? ",
                        style: Theme.of(context).textTheme.headline4?.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const SignInScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Sign in",
                          style:
                              Theme.of(context).textTheme.headline4?.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Theme.of(context).primaryColor,
                                  ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
