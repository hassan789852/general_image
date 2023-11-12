import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GeneralImageFile extends StatelessWidget {
  final String path;
  final BoxFit fit;
  final double? height;
  final double? width;
  final Color? color;

  const GeneralImageFile(
      {Key? key,
        required this.path,
        this.fit = BoxFit.cover,
        this.height = 50 ,
        this.width = 50,
        this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? imgType = path.split('.').last;
    if (imgType == 'svg') {
      return SizedBox(
        child: SvgPicture.file(
          File(path),
          colorFilter:
          color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
          fit: fit,
          height: height,
          width: width,
        ),
      );
    } else {
      return SizedBox(
        height: height,
        width: width,
        child: Image.file(
          File(path),
          color: color,
          fit: fit,
          height: height,
          width: width,
        ),
      );
    }
  }
}
