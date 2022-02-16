import 'package:fitness_app/config/textform/decoration.dart';
import 'package:flutter/material.dart';

class EmailInput extends StatefulWidget {
  const EmailInput({
    Key? key,
    required this.inputType,
    required this.inputAction,
  }) : super(key: key);

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
          decoration: buildInputDecoration(Icons.email, "Email address"),
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
