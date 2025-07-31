import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/configs/assets/app_vectors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: SvgPicture.asset(AppVectors.logo)));
  }
}
