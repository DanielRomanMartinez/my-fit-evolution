import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_fit_evolution/ui/theme/app_theme.dart';

class MyFitEvolutionAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showReturnButton;

  const MyFitEvolutionAppBar({
    this.showReturnButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppTheme.primary400,
      automaticallyImplyLeading: true,
      titleSpacing: 5,
      leading: (showReturnButton)
          ? IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              iconSize: 16,
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          : const SizedBox.shrink(),
      title: Image.asset(
        './assets/images/splashBranding.png',
        height: 40,
      ),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.account_circle),
          iconSize: 28,
          onPressed: () {
            print('Profile icon pressed');
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
