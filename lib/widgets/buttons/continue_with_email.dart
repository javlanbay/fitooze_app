import 'package:flutter/material.dart';

class ContinueWithEmail extends StatelessWidget {
  const ContinueWithEmail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
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
                color: Colors.white.withOpacity(0.2),
              ),
              child: Image.asset("assets/images/Email.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Text(
                "Continue with email",
                style: Theme.of(context).textTheme.headline3!.copyWith(),
              ),
            ),
          ],
        ),
        onPressed: () {},
        color: Theme.of(context).primaryColor,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
