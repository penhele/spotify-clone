import 'package:flutter/material.dart';

import '../../helpers/is_dark_mode.dart';

class BasicAppBar extends StatelessWidget {
  const BasicAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = context.isDarkMode;

    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: isDark
                ? Colors.white.withValues(alpha: 0.03)
                : Colors.black.withValues(alpha: 0.04),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 15,
            color: isDark ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
