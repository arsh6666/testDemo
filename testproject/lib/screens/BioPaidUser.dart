import 'package:flutter/material.dart';

class BioPaidUser extends StatelessWidget {
  const BioPaidUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('lib/assets/images/background.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SafeArea(
                child:Container()
            )
          ],
        )
        );
  }
}
