// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:flutter/material.dart';
import 'package:layout_helpers/src/layout_helpers/window_size_breakpoint.dart';

extension BreakpointScreenSizeExt on WindowSizeBreakpoint {
  static WindowSizeBreakpoint screenSize(double width) {
    if (width < WindowSizeBreakpoint.medium.begin) {
      return WindowSizeBreakpoint.compact;
    } else if (width < WindowSizeBreakpoint.expanded.begin) {
      return WindowSizeBreakpoint.medium;
    } else if (width < WindowSizeBreakpoint.large.begin) {
      return WindowSizeBreakpoint.large;
    } else {
      return WindowSizeBreakpoint.extraLarge;
    }
  }

  /// Get [double] for size of body.
  static double body(double width) {
    return width - margin(width) * 2;
  }

  static double spacer() {
    return 24;
  }

  /// Get [int] for the number of margins.
  static double margin(double width) {
    final size = screenSize(width);
    switch (size) {
      case WindowSizeBreakpoint.compact:
        return 16;
      case WindowSizeBreakpoint.medium:
        return 24;
      case WindowSizeBreakpoint.expanded:
        return 24;
      case WindowSizeBreakpoint.large:
        return 24;
      case WindowSizeBreakpoint.extraLarge:
        return 24;
    }
  }

  static double padding(double width) {
    final padSize = screenSize(width);
    switch (padSize) {
      case WindowSizeBreakpoint.compact:
        return 4;
      case WindowSizeBreakpoint.medium:
        return 8;
      case WindowSizeBreakpoint.expanded:
        return 12;
      case WindowSizeBreakpoint.large:
        return 16;
      case WindowSizeBreakpoint.extraLarge:
        return 20;
    }
  }
  
  /// To use wrap the scaffold in adaptive scaffold in 
  /// a theme and supply themeDataWithVisualDensity
  static VisualDensity visualDensity(double width) {
    final scSize = screenSize(width);
    switch (scSize) {
      case WindowSizeBreakpoint.compact:
        return  VisualDensity.compact;
      case WindowSizeBreakpoint.medium:
        return VisualDensity.comfortable;
      case WindowSizeBreakpoint.expanded:
        return VisualDensity.standard;
      case WindowSizeBreakpoint.large:
        return const VisualDensity(horizontal: 1,vertical: 1);
      case WindowSizeBreakpoint.extraLarge:
        return const VisualDensity(horizontal: 2,vertical: 2);
    }
  }



}
