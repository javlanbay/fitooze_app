import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    Key? key,
    required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;

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
    );
  }
}
