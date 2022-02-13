import 'package:flutter/material.dart';

class ContinueWithGoogle extends StatelessWidget {
  const ContinueWithGoogle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 30),
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
                "Continue with Google",
                style: Theme.of(context).textTheme.headline3!.copyWith(
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
    );
  }
}
