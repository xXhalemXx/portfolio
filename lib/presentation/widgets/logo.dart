import 'package:flutter/material.dart';
import 'package:portfolio/presentation/utils/extensions/extensions.dart';

import '../configs/configs.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    double size = context.adaptive<double>(
      s20,
      s80,
      md: s60,
    );
    return GestureDetector(
      onTap: onTap,
      child: Transform.scale(
        scaleX: -1,
        child: Image.asset(mLogo, width: size, height: size),
      ).addPadding(edgeInsets: context.padding(l: s10)),
    );
  }
}
