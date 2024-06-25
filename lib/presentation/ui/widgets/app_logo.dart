import 'package:flutter/cupertino.dart';

import '../utility/assets_path.dart';

class Applogo extends StatelessWidget {
 const Applogo({super.key, this.widht, this.height});

  final double? widht;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetsPath.logo,
      height: 120,
      width: widht ?? 120,
    );
  }
}
