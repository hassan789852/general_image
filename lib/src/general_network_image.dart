import 'package:flutter/material.dart';

import 'network_image_png_cash.dart';
import 'network_image_svg.dart';


class GeneralNetworkImage extends StatelessWidget {
  final Widget? failWidget;
  final String url;
  final BoxFit boxFit;
  final double? height;
  final bool matchTextDirection;
  final double? width;
  final Widget? placeHolderWhileLoading;
  final Color? color;
  const GeneralNetworkImage({
    Key? key,
    required this.url,
    this.failWidget,
    this.height = 50,
    this.matchTextDirection = true,
    this.width = 50,
    this.boxFit = BoxFit.cover,
    this.placeHolderWhileLoading,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? imgType = url.split('.').last;
    if (imgType == "svg") {
      return NetworkImageSvg(
        url: url,
        height: height,
        matchTextDirection: matchTextDirection,
        width: width,
        color: color,
        boxFit: boxFit,
        failWidget: failWidget,
        placeHolderWhileLoading: placeHolderWhileLoading,
      );
    } else {
      return NetworkImagePng(
        url: url,
        height: height,
        width: width,
        color: color,
        boxFit: boxFit,
        matchTextDirection: matchTextDirection,
        failWidget: failWidget,
        placeHolderWhileLoading: placeHolderWhileLoading,
      );
    }
  }
}
