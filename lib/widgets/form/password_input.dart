import 'package:fitness_app/config/textform/decoration.dart';
import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  const PasswordInput({
    Key? key,
    required this.inputType,
    required this.inputAction,
    required this.suffixIcon,
  }) : super(key: key);

  final IconData suffixIcon;
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
          decoration: buildInputDecoration(Icons.lock, "Password"),
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
