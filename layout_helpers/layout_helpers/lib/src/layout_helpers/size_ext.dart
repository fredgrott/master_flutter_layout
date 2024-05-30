// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



import 'package:flutter/material.dart';
import 'package:layout_helpers/src/layout_helpers/app_breakpoint.dart';
import 'package:layout_helpers/src/layout_helpers/window_size_breakpoint.dart';

extension SizeExt on Size {
  /// Get [Breakpoint] from [Size].
  AppBreakpoint get breakpoint => AppBreakpoint.fromWidth(width);

  /// Get [BreakpointScreenSize] from [Size].
  WindowSizeBreakpoint get breakpointScreenSize => breakpoint.screenSize;

  /// Get the [double] of margin from [Size].
  double get breakpointMargin => breakpoint.margin;

  /// Get the [double] of body from [Size].
  double get breakpointBody => breakpoint.body;

  double get breakpointPadding => breakpoint.padding;

  
}
