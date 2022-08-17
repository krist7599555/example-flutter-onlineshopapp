import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loopers_clone_app/constants.dart';
import 'package:loopers_clone_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.black12,
      elevation: 100.0,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          color: kTextColor,
        ),
        onPressed: () {
          debugPrint("HELLo Left");
        },
      ),
      actions: [
        IconButton(
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              color: kTextColor,
            ),
            onPressed: () {
              debugPrint("HELLo Right");
            }),
        IconButton(
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              color: kTextColor,
            ),
            onPressed: () {
              debugPrint("HELLo Right");
            }),
        const SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
