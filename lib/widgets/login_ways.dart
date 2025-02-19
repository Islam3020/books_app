import 'package:books_app/widgets/login_way_item.dart';
import 'package:flutter/material.dart';

class LoginWays extends StatelessWidget {
  const LoginWays({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LoginWayItem(
          widget: Icon(
            Icons.facebook_sharp,
            color: Colors.blue,
          ),
        ),
        LoginWayItem(
            widget:
                Image(image: AssetImage('assets/image/google_ic.png'))),
        LoginWayItem(
          widget: Icon(
            Icons.apple,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
