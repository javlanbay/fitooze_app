import 'package:fitness_app/config/textform/decoration.dart';
import 'package:flutter/material.dart';

class PhoneInput extends StatefulWidget {
  const PhoneInput({
    Key? key,
    required this.inputType,
    required this.inputAction,
  }) : super(key: key);

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
          decoration: buildInputDecoration(Icons.phone, "Phone number"),
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
