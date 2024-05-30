// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:flutter/material.dart';
import 'package:layout_helpers/src/layout_helpers/breakpoint_screen_size_ext.dart';
import 'package:layout_helpers/src/layout_helpers/window_size_breakpoint.dart';

/// Class to assist ext methods in passing 
/// breakpoint and other values to layout objects
/// such as Size, BoxConstraints, etc.
///
/// Note, we set the ThemeData visualDensity parameter
/// to VisualDensity.adaptivePlatformDensity
/// to get desktop to change densities as we cannot
/// access content in ThemeData to do breakpoints anyway.
/// Then wrap the adaptive scaffold in a Theme widget 
/// and then use the extension methods to grab the 
/// visual density via window size breakpoint to inject 
/// into the theme widget wrapped scaffold.
///
/// Usage:
/// ```
///     width = context.widthPx
///     breakpoint = AppBreakpoint.fromWidth(width)
///     margin = AppBreakpoint.margin
///     body = AppBreakpoint.body
///     padding = AppBreakpoint.padding
///     spacer = AppBreakpoint.spacer
///     visualDensity = AppBreakpoint.visDensity
///  ```
///
/// @author Fredrick Allan Grott
class AppBreakpoint  {

 /// Generate [Breakpoint] from [width].
  factory AppBreakpoint.fromWidth(double width) => AppBreakpoint._(width);

  /// Generate [Breakpoint] from [Size].
  factory AppBreakpoint.fromSize(Size size) => AppBreakpoint.fromWidth(size.width);

  /// Generate [Breakpoint] from [BoxConstraints].
  factory AppBreakpoint.fromConstraints(BoxConstraints constraints) =>
      AppBreakpoint.fromWidth(constraints.maxWidth);

  const AppBreakpoint._(this._width);

  final double _width;

  /// Breakpoint screen size element of Breakpoint system.
  WindowSizeBreakpoint get screenSize =>
      BreakpointScreenSizeExt.screenSize(_width);

  /// margin element of Breakpoint system.
  double get margin => BreakpointScreenSizeExt.margin(_width);

  /// body element of Breakpoint system.
  double get body => BreakpointScreenSizeExt.body(_width);

  double get padding => BreakpointScreenSizeExt.padding(_width);

  double get spacer => BreakpointScreenSizeExt.spacer();

  VisualDensity get visDensity => BreakpointScreenSizeExt.visualDensity(_width);

  @override
  String toString() => 'AppBreakpoint('
      'range: $screenSize, '
      'margin: $margin, '
      'padding: $padding,'
      'spacer: $spacer,'
      'visualDensity: $visDensity,'
      'body: $body,'
      ')';



}