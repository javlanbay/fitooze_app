import 'package:fitness_app/config/textform/decoration.dart';
import 'package:flutter/material.dart';

class SurnameInput extends StatefulWidget {
  const SurnameInput({
    Key? key,
    required this.inputType,
    required this.inputAction,
  }) : super(key: key);

  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  State<SurnameInput> createState() => _SurnameInputState();
}

class _SurnameInputState extends State<SurnameInput> {
  final TextEditingController _surname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      child: Center(
        child: TextFormField(
          controller: _surname,
          decoration:
              buildInputDecoration(Icons.account_box_rounded, "Surname"),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter your surname';
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
