import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/configs/theme/app_colors.dart';
import '../bloc/theme_cubit.dart';

class ModeContainer extends StatelessWidget {
  const ModeContainer({
    super.key,
    required this.title,
    required this.icon,
    required this.themeMode,
  });

  final String title;
  final String icon;
  final ThemeMode themeMode;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<ThemeCubit>().updateTheme(themeMode),
      child: Column(
        children: [
          ClipOval(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: const Color(0xff30393C).withValues(alpha: 0.5),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(icon, fit: BoxFit.none),
              ),
            ),
          ),
          const SizedBox(height: 15),

          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 17,
              color: AppColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
