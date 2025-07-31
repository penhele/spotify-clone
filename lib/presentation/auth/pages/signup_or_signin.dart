import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/helpers/is_dark_mode.dart';
import '../../../common/widgets/appbar/app_bar.dart';
import '../../../common/widgets/button/basic_app_button.dart';
import '../../../core/configs/assets/app_images.dart';
import '../../../core/configs/assets/app_vectors.dart';
import '../../../core/configs/theme/app_colors.dart';

class SignupOrSigninScreen extends StatelessWidget {
  const SignupOrSigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = context.isDarkMode;

    return Scaffold(
      body: Stack(
        children: [
          const BasicAppBar(),

          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppVectors.topPattern),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(AppVectors.bottomPattern),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(AppImages.authBG),
          ),

          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppVectors.logo),
                  const SizedBox(height: 55),

                  const Text(
                    'Enjoy Listening Music',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                  ),
                  const SizedBox(height: 21),

                  const Text(
                    'Spotify is a proprietary Swedish audio streaming and media services provider ',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: AppColors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),

                  Row(
                    children: [
                      Expanded(
                        child: BasicAppButton(
                          onPressed: () {},
                          title: 'Register',
                        ),
                      ),
                      const SizedBox(width: 20),

                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: isDark ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
