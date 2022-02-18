import 'dart:convert';

import 'package:flutter/material.dart';

import '../../api/api.dart';

class SignUpButton extends StatefulWidget {
  const SignUpButton({
    Key? key,
    required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;

  @override
  State<SignUpButton> createState() => _SignUpButtonState();
}

late String name, email, phone;

class _SignUpButtonState extends State<SignUpButton> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _surname = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  Future<dynamic> register() async {
    var data = {
      'name': _name.text,
      'surname': _surname.text,
      'email': _email.text,
      'password': _password.text,
    };

    var res = await CallApi().postData(data, 'register');
    var body = json.decode(res.body);
    if (body['success'] ?? true) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: Text("Successfully registered!"),
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
            style: Theme.of(context).textTheme.headline3!.copyWith(),
          ),
        ),
        onPressed: () {
          if (widget._formKey.currentState!.validate()) {
            print("successful");
            register();
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
    );
  }
}
