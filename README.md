<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

This Flutter package provides a simple way to show images from the Internet or from assets. It supports both PNG and SVG images.



## Features

- Show images from the Internet with a single line of code:

```dart
GeneralNetworkImage(url: "url",height: 50, width: 50,matchTextDirection: true,)   
```

- Show images from assets with a single line of code:

```dart
GeneralImageAssets(path: "assets_path",width: 50,height: 50,color: Colors.red,matchTextDirection: true,boxFit: BoxFit.contain,)
```

- Cache images to improve performance
- Support for both PNG and SVG images in one line 

## Getting started

To use the GeneralImage package, simply import it into your project:
```
import 'package:general_image/general_image.dart';
```

## Usage

If you want to show the image, in case of "svg" or "png" use this code:

```dart
 GeneralNetworkImage(
    url: "url",
    height: 50, width: 50,
    matchTextDirection: true,
    boxFit: BoxFit.fill,
    color: Colors.green,
    failWidget:Icon(Icons.error) ),
```

If you want to show the image from your assets, in case of "svg" or "png" use this code:
```dart
 GeneralImageAssets(
    path: "path",
    width: 50,height: 50,
    color: Colors.red,
    matchTextDirection: true,
    boxFit: BoxFit.contain,)
```

the package  takes the following parameters:
- `url`: The URL of the image.

- `height`: The height of the image in pixels.

- `width`: The width of the image in pixels.

- `matchTextDirection`: support RTL.

- `color`:The color of the image.

- `boxFit`:The way in which the image should be scaled to fit the available space.


### Plugins
- shimmer: [link](plugins/shimmer)
  [![Pub](https://img.shields.io/pub/v/shimmer.svg?label=dev&include_prereleases)](https://pub.dev/packages/shimmer)
- cached_network_image: [link](plugins/cached_network_image)
  [![Pub](https://img.shields.io/pub/v/cached_network_image.svg?label=dev&include_prereleases)](https://pub.dev/packages/cached_network_image)
- flutter_svg: [link](plugins/flutter_svg)
  [![Pub](https://img.shields.io/pub/v/flutter_svg.svg?label=dev&include_prereleases)](https://pub.dev/packages/flutter_svg)



## Conclusion


The GeneralImage package provides a simple way to show images from the Internet or from assets. It supports both PNG and SVG images, and it caches images to improve performance.

## Author
- Hassan Hallak
- hassanhallak4000@gmail.com