import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/widgets/button/basic_app_button.dart';
import '../../../core/configs/assets/app_images.dart';
import '../../../core/configs/assets/app_vectors.dart';
import '../widgets/mode_container.dart';

class ChooseModeScreen extends StatelessWidget {
  const ChooseModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.chooseModeBG),
              ),
            ),
          ),

          Container(color: Colors.black.withValues(alpha: 0.15)),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.logo),
                ),
                const Spacer(),

                const Text(
                  'Choose Mode',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 40),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ModeContainer(title: 'Dark Mode', icon: AppVectors.moon),
                    SizedBox(width: 40),
                    ModeContainer(title: 'Light Mode', icon: AppVectors.sun),
                  ],
                ),

                const SizedBox(height: 50),

                BasicAppButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const ChooseModeScreen(),
                      ),
                    );
                  },
                  title: 'Continue',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
