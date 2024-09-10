import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  final bool centerTitle;
  final bool showIcon;

  const Header({
    super.key,
    this.title = 'APP_NAME',
    this.backgroundColor = Colors.white,
    this.centerTitle = true,
    this.showIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: showIcon,
        centerTitle: centerTitle,
        backgroundColor: backgroundColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.menu,
              color: Colors.grey[850],
            ),
            SvgPicture.asset(
              'assets/svg/logo.svg',
              height: 30,
            ),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
              radius: 15,
            ),
          ],
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
