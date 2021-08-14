import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_fit_evolution/ui/theme/app_theme.dart';

class MyFitEvolutionAppBar extends StatelessWidget implements PreferredSizeWidget {

  const MyFitEvolutionAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppTheme.primary400,
      automaticallyImplyLeading: true,
      titleSpacing: 5,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          print("Profile icon pressed");
        },
      ),

      title: Image.asset(
        './assets/images/splashBranding.png',
        height: 40,
      ),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.account_circle),
          onPressed: () {
            print("Profile icon pressed");
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
