// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:flutter/material.dart';
import 'package:layout_helpers/src/layout_helpers/app_breakpoint.dart';
import 'package:layout_helpers/src/layout_helpers/window_size_breakpoint.dart';


extension BoxConstraintsExt on BoxConstraints {
  /// Get [Breakpoint] from [BoxConstraints].
  AppBreakpoint get appBreakpoint => AppBreakpoint.fromConstraints(this);

  /// Get [BreakpointScreenSize] from [BoxConstraints].
  WindowSizeBreakpoint get breakpointScreenSize => appBreakpoint.screenSize;

  /// Get the [double] of margin from [BoxConstraints].
  double get breakpointMargin => appBreakpoint.margin;

  /// Get the [double] of body from [BoxConstraints].
  double get breakpointBody => appBreakpoint.body;






}