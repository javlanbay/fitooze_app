import 'package:fitness_app/config/textform/decoration.dart';
import 'package:flutter/material.dart';

class TextFieldInput extends StatefulWidget {
  const TextFieldInput({
    Key? key,
    required this.inputType,
    required this.inputAction,
  }) : super(key: key);

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
          decoration: buildInputDecoration(Icons.account_box, "Your name"),
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
