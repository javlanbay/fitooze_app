// ignore_for_file: deprecated_member_use

import 'package:fitness_app/screens/signin/signin_screen.dart';
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
                    icon: Icons.account_box,
                    hint: "Your name",
                    inputType: TextInputType.name,
                    inputAction: TextInputAction.next,
                  ),
                  const EmailInput(
                    icon: Icons.email,
                    hint: "Email address",
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next,
                  ),
                  const PhoneInput(
                    icon: Icons.phone,
                    hint: "Phone number",
                    inputType: TextInputType.phone,
                    inputAction: TextInputAction.next,
                  ),
                  const PasswordInput(
                    icon: Icons.lock,
                    hint: "Password",
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
                          "Sign Up Now",
                          style:
                              Theme.of(context).textTheme.headline3!.copyWith(),
                        ),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          print("successful");

                          return;
                        } else {
                          print("UnSuccessfull");
                        }
                      },
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
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

class PasswordInput extends StatefulWidget {
  const PasswordInput({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputType,
    required this.inputAction,
    required this.suffixIcon,
  }) : super(key: key);

  final IconData icon;
  final IconData suffixIcon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      child: Center(
        child: TextFormField(
          controller: _password,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFF333333),
            prefixIcon: Icon(
              widget.icon,
              color: Colors.white,
            ),
            suffixIcon: Icon(
              widget.suffixIcon,
              color: Colors.white,
            ),
            hintText: widget.hint,
            hintStyle: Theme.of(context).textTheme.headline4!.copyWith(
                  color: const Color(0xFF828282),
                  fontWeight: FontWeight.w400,
                ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please a Enter Password';
            }
            return null;
          },
          obscureText: true,
          style: const TextStyle(color: Color(0xFF828282)),
          keyboardType: widget.inputType,
          textInputAction: widget.inputAction,
        ),
      ),
    );
  }
}

class PhoneInput extends StatefulWidget {
  const PhoneInput({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputType,
    required this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  State<PhoneInput> createState() => _PhoneInputState();
}

class _PhoneInputState extends State<PhoneInput> {
  final TextEditingController _phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      child: Center(
        child: TextFormField(
          controller: _phone,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFF333333),
            prefixIcon: Icon(
              widget.icon,
              color: Colors.white,
            ),
            hintText: widget.hint,
            hintStyle: Theme.of(context).textTheme.headline4!.copyWith(
                  color: const Color(0xFF828282),
                  fontWeight: FontWeight.w400,
                ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
          ),
          maxLength: 9,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter phone number';
            }
            if (value.length < 9) {
              return "Please enter valid phone";
            }
            return null;
          },
          onSaved: (value) {},
          style: const TextStyle(color: Color(0xFF828282)),
          keyboardType: widget.inputType,
          textInputAction: widget.inputAction,
        ),
      ),
    );
  }
}

class EmailInput extends StatefulWidget {
  const EmailInput({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputType,
    required this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  State<EmailInput> createState() => _EmailInputState();
}

class _EmailInputState extends State<EmailInput> {
  final TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      child: Center(
        child: TextFormField(
          controller: _email,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFF333333),
            prefixIcon: Icon(
              widget.icon,
              color: Colors.white,
            ),
            hintText: widget.hint,
            hintStyle: Theme.of(context).textTheme.headline4!.copyWith(
                  color: const Color(0xFF828282),
                  fontWeight: FontWeight.w400,
                ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter email';
            }
            if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                .hasMatch(value)) {
              return 'Please a valid Email';
            }
            return null;
          },
          onSaved: (value) {},
          style: const TextStyle(color: Color(0xFF828282)),
          keyboardType: widget.inputType,
          textInputAction: widget.inputAction,
        ),
      ),
    );
  }
}

class TextFieldInput extends StatefulWidget {
  const TextFieldInput({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputType,
    required this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  State<TextFieldInput> createState() => _TextFieldInputState();
}

class _TextFieldInputState extends State<TextFieldInput> {
  final TextEditingController _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      child: Center(
        child: TextFormField(
          controller: _name,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFF333333),
            prefixIcon: Icon(
              widget.icon,
              color: Colors.white,
            ),
            hintText: widget.hint,
            hintStyle: Theme.of(context).textTheme.headline4!.copyWith(
                  color: const Color(0xFF828282),
                  fontWeight: FontWeight.w400,
                ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
          ),
          onSaved: (name) {},
          validator: (value) {
            if (value!.isEmpty) {
              return "Please enter name";
            }
            return null;
          },
          style: const TextStyle(color: Color(0xFF828282)),
          keyboardType: widget.inputType,
          textInputAction: widget.inputAction,
        ),
      ),
    );
  }
}
