// ignore_for_file: deprecated_member_use

import 'package:fitness_app/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  static const routeName = 'sign_in_screen';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const SignInScreen(),
    );
  }

  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Theme.of(context).primaryColor;
    }

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
            color: Theme.of(context).accentColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 50, horizontal: 100),
                  child: Center(
                    child: Text(
                      "Glad to meet you again!",
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const TextFieldInput(
                  icon: Icons.account_box,
                  hint: "Your name",
                  inputType: TextInputType.name,
                  inputAction: TextInputAction.next,
                ),
                const PasswordInput(
                  icon: Icons.lock,
                  hint: "Password",
                  inputType: TextInputType.name,
                  inputAction: TextInputAction.done,
                  suffixIcon: Icons.visibility_off,
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    Text(
                      "Remember me",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                    const Spacer(),
                    Text(
                      "Forgot Password",
                      style: Theme.of(context).textTheme.headline3?.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
                Container(
                  height: 55,
                  margin: const EdgeInsets.only(
                    top: 20,
                    left: 10,
                    right: 10,
                    bottom: 15,
                  ),
                  width: double.infinity,
                  child: FlatButton(
                    child: Center(
                      child: Text(
                        "Login Now",
                        style:
                            Theme.of(context).textTheme.headline3!.copyWith(),
                      ),
                    ),
                    onPressed: () {},
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Text(
                  "Or",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                ),
                Container(
                  height: 55,
                  margin: const EdgeInsets.only(
                      top: 17, left: 10, right: 10, bottom: 30),
                  width: double.infinity,
                  child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey.withOpacity(0.1),
                          ),
                          child: Image.asset("assets/images/Google.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 100),
                          child: Text(
                            "Login with Google",
                            style:
                                Theme.of(context).textTheme.headline3!.copyWith(
                                      color: Colors.black,
                                    ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {},
                    color: Colors.white,
                    textColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don`t have an account? ",
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
                            builder: (_) => const SignUpScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign up",
                        style: Theme.of(context).textTheme.headline4?.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).primaryColor,
                            ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
