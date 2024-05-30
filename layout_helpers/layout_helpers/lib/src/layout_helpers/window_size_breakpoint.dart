// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



/// WindowSizeBreakpoint according to MD3, see:
/// https://m3.material.io/foundations/layout/applying-layout/window-size-classes
///
/// Just an easy way to use enumerated types in enums to 
/// implement a model.
///
/// @author Fredrick Allan Grott
enum WindowSizeBreakpoint {

  compact(0, 599),
  
  medium(600 , 839),

  expanded(840 , 1199 ),

  large(1200 , 1599),

  extraLarge(1600, double.infinity);



  final double begin;

  final double end;

  const WindowSizeBreakpoint(this.begin, this.end);

}