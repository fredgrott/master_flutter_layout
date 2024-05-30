// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



import 'package:flutter/material.dart';
import 'package:layout_helpers/src/layout_helpers/app_breakpoint.dart';
import 'package:layout_helpers/src/layout_helpers/size_ext.dart';
import 'package:layout_helpers/src/layout_helpers/window_size_breakpoint.dart';

extension BuildContextExt on BuildContext {
  /// Get [Breakpoint] from [BuildContext].
  AppBreakpoint get breakpoint => MediaQuery.sizeOf(this).breakpoint;

  /// Get [BreakpointScreenSize] from [BuildContext].
  WindowSizeBreakpoint get breakpointScreenSize => breakpoint.screenSize;

  /// Get the [double] of margin from [BuildContext].
  double get breakpointMargin => breakpoint.margin;

  /// Get the [double] of body from [BuildContext].
  double get breakpointBody => breakpoint.body;

  double get breakpointPadding => breakpoint.padding;

  VisualDensity get breakpointVisualDensity => breakpoint.visDensity;

}

