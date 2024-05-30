// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'dart:math';

import 'package:flutter/material.dart';
import 'package:universal_platform/universal_platform.dart';


/// No longer grab the MediaQueryData object as 
/// that rebuilds fully for any property change.
extension SizedContextExt on BuildContext {

  double get pixelsPerInch => UniversalPlatform.isAndroid || UniversalPlatform.isIOS? 150 : 96;

  bool get isLandscape => MediaQuery.orientationOf(this) == Orientation.landscape;

 Size get sizePx => MediaQuery.of(this).size;

 double get widthPx => sizePx.width;

 double get heightPx => sizePx.height;

 /// Returns diagonal screen pixels
  double get diagonalPx {
    final Size s = sizePx;
    return sqrt((s.width * s.width) + (s.height * s.height));
  }

  /// Returns pixel size in Inches
  Size get sizeInches {
    final Size pxSize = sizePx;
    return Size(pxSize.width / pixelsPerInch, pxSize.height / pixelsPerInch);
  }

  /// Returns screen width in Inches
  double get widthInches => sizeInches.width;

  /// Returns screen height in Inches
  double get heightInches => sizeInches.height;

  /// Returns screen diagonal in Inches
  double get diagonalInches => diagonalPx / pixelsPerInch;

  /// Returns fraction (0-1) of screen width in pixels
  double widthPct(double fraction) => fraction * widthPx;
  
  /// Returns fraction (0-1) of screen height in pixels
  double heightPct(double fraction) => fraction * heightPx;


}