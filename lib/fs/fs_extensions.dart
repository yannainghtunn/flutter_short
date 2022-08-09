import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
part './builder/builders.dart';

extension FSString on String {
  _StringExt get text {
    return _StringExt(this);
  }
}

class _FS {
  Color? _color;
  BoxBorder? _border;
  LinearGradient? _gradient;
  BoxShape? _shape;
  BorderRadius? _borderRadius;
  BoxShadow? _shadow;
  Widget _child;
  DecorationImage? _image;
  _FS(this._child);
  _FS color(Color c) {
    return this.._color = c;
  }

  _FS radius(BorderRadius radius) {
    return this.._borderRadius = radius;
  }

  _FS get radius_1 {
    return this.._borderRadius = BorderRadius.circular(1);
  }

  _FS get radius_2 {
    return this.._borderRadius = BorderRadius.circular(2);
  }

  _FS get radius_3 {
    return this.._borderRadius = BorderRadius.circular(3);
  }

  _FS get radius_4 {
    return this.._borderRadius = BorderRadius.circular(4);
  }

  _FS get radius_5 {
    return this.._borderRadius = BorderRadius.circular(5);
  }

  _FS get radius_7 {
    return this.._borderRadius = BorderRadius.circular(7);
  }

  _FS get radius_10 {
    return this.._borderRadius = BorderRadius.circular(10);
  }

  _FS get radius_12 {
    return this.._borderRadius = BorderRadius.circular(12);
  }

  _FS get radius_15 {
    return this.._borderRadius = BorderRadius.circular(15);
  }

  _FS get radius_17 {
    return this.._borderRadius = BorderRadius.circular(17);
  }

  _FS get radius_20 {
    return this.._borderRadius = BorderRadius.circular(20);
  }

  _FS get radius_25 {
    return this.._borderRadius = BorderRadius.circular(25);
  }

  _FS get radius_30 {
    return this.._borderRadius = BorderRadius.circular(30);
  }

  _FS shadow(Color color,
      {double blurRadius = 2,
      double spreadRadius = 1,
      BlurStyle blurStyle = BlurStyle.normal,
      Offset offset = Offset.zero}) {
    return this
      .._shadow = BoxShadow(
          color: color,
          spreadRadius: spreadRadius,
          blurRadius: blurRadius,
          offset: offset,
          blurStyle: blurStyle);
  }

  _FS gradient(List<Color> colors,
      {AlignmentGeometry begin = Alignment.centerLeft,
      AlignmentGeometry end = Alignment.centerRight}) {
    return this
      .._gradient = LinearGradient(colors: colors, begin: begin, end: end);
  }

  _FS image(ImageProvider provider, [BoxFit fit = BoxFit.cover]) {
    return this.._image = DecorationImage(image: provider, fit: fit);
  }

  _FS get circle {
    return this.._shape = BoxShape.circle;
  }

  _FS border(Color color, [double size = 1]) {
    return this.._border = Border.all(color: color, width: size);
  }

  _FS borderSide(Border borderS) {
    return this.._border = borderS;
  }

  Widget get build {
    return Container(
      child: _child,
      decoration: BoxDecoration(
          color: _gradient == null ? _color : null,
          boxShadow: _shadow == null ? null : [_shadow!],
          shape: _shape ?? BoxShape.rectangle,
          border: _border,
          image: _image,
          gradient: _gradient),
    );
  }
}

extension FSList on List {
  _FlexBuilder get column {
    return _FlexBuilder(Axis.vertical, List<Widget>.from(this));
  }

  _FlexBuilder get row {
    return _FlexBuilder(Axis.horizontal, List<Widget>.from(this));
  }
}

class _FlexBuilder {
  Axis _axis;
  List<Widget> _children;
  MainAxisAlignment? _mainAxisAlignment;
  CrossAxisAlignment? _crossAxisAlignment;
  MainAxisSize? _mainAxisSize;
  _FlexBuilder(this._axis, this._children);

  _FlexBuilder get cross_center {
    return this.._crossAxisAlignment = CrossAxisAlignment.center;
  }

  _FlexBuilder get cross_start {
    return this.._crossAxisAlignment = CrossAxisAlignment.start;
  }

  _FlexBuilder get cross_end {
    return this.._crossAxisAlignment = CrossAxisAlignment.end;
  }

  _FlexBuilder get cross_baseline {
    return this.._crossAxisAlignment = CrossAxisAlignment.baseline;
  }

  _FlexBuilder get cross_stretch {
    return this.._crossAxisAlignment = CrossAxisAlignment.stretch;
  }

  _FlexBuilder get main_center {
    return this.._mainAxisAlignment = MainAxisAlignment.center;
  }

  _FlexBuilder get main_start {
    return this.._mainAxisAlignment = MainAxisAlignment.start;
  }

  _FlexBuilder get main_end {
    return this.._mainAxisAlignment = MainAxisAlignment.end;
  }

  _FlexBuilder get main_between {
    return this.._mainAxisAlignment = MainAxisAlignment.spaceBetween;
  }

  _FlexBuilder get main_around {
    return this.._mainAxisAlignment = MainAxisAlignment.spaceAround;
  }

  _FlexBuilder get main_evenly {
    return this.._mainAxisAlignment = MainAxisAlignment.spaceEvenly;
  }

  _FlexBuilder get max_size {
    return this.._mainAxisSize = MainAxisSize.max;
  }

  _FlexBuilder get min_size {
    return this.._mainAxisSize = MainAxisSize.min;
  }

  Widget get build {
    return Flex(
      direction: _axis,
      children: _children,
      mainAxisSize: _mainAxisSize ?? MainAxisSize.max,
      mainAxisAlignment: _mainAxisAlignment ?? MainAxisAlignment.start,
      crossAxisAlignment: _crossAxisAlignment ?? CrossAxisAlignment.center,
    );
  }
}

extension FSWidget on Widget {
  Widget get center {
    return Center(
      child: this,
    );
  }

  Widget get right {
    return Align(
      alignment: Alignment.centerRight,
      child: this,
    );
  }

  Widget get left {
    return Align(
      alignment: Alignment.centerLeft,
      child: this,
    );
  }

  Widget get top {
    return Align(
      alignment: Alignment.topCenter,
      child: this,
    );
  }

  Widget get bottom {
    return Align(
      alignment: Alignment.bottomCenter,
      child: this,
    );
  }

  Widget get expanded {
    return Expanded(child: this);
  }

  _ExpandedExt get expand {
    return _ExpandedExt(this);
  }

  _ScrollExt get scroll {
    return _ScrollExt(this);
  }

  Widget get scrollable {
    return SingleChildScrollView(
      child: this,
    );
  }

  _FS get container {
    return _FS(this);
  }

  Widget get p_0 {
    return _paddingAll(0, this);
  }

  Widget get p_1 {
    return _paddingAll(1, this);
  }

  Widget get p_2 {
    return _paddingAll(2, this);
  }

  Widget get p_4 {
    return _paddingAll(4, this);
  }

  Widget get p_5 {
    return _paddingAll(5, this);
  }

  Widget get p_6 {
    return _paddingAll(6, this);
  }

  Widget get p_7 {
    return _paddingAll(7, this);
  }

  Widget get p_10 {
    return _paddingAll(10, this);
  }

  Widget get pl_0 {
    return _paddingLeft(0, this);
  }

  Widget get pl_1 {
    return _paddingLeft(1, this);
  }

  Widget get pl_2 {
    return _paddingLeft(2, this);
  }

  Widget get pl_4 {
    return _paddingLeft(4, this);
  }

  Widget get pl_5 {
    return _paddingLeft(5, this);
  }

  Widget get pl_6 {
    return _paddingLeft(6, this);
  }

  Widget get pl_7 {
    return _paddingLeft(7, this);
  }

  Widget get pl_10 {
    return _paddingLeft(10, this);
  }

  Widget get pt_0 {
    return _paddingTop(0, this);
  }

  Widget get pt_1 {
    return _paddingTop(1, this);
  }

  Widget get pt_2 {
    return _paddingTop(2, this);
  }

  Widget get pt_4 {
    return _paddingTop(4, this);
  }

  Widget get pt_5 {
    return _paddingTop(5, this);
  }

  Widget get pt_6 {
    return _paddingTop(6, this);
  }

  Widget get pt_7 {
    return _paddingTop(7, this);
  }

  Widget get pt_10 {
    return _paddingTop(10, this);
  }

  Widget get pb_0 {
    return _paddingBottom(0, this);
  }

  Widget get pb_1 {
    return _paddingBottom(1, this);
  }

  Widget get pb_2 {
    return _paddingBottom(2, this);
  }

  Widget get pb_4 {
    return _paddingBottom(4, this);
  }

  Widget get pb_5 {
    return _paddingBottom(5, this);
  }

  Widget get pb_6 {
    return _paddingBottom(6, this);
  }

  Widget get pb_7 {
    return _paddingBottom(7, this);
  }

  Widget get pb_10 {
    return _paddingBottom(10, this);
  }

  Widget get pr_0 {
    return _paddingRight(0, this);
  }

  Widget get pr_1 {
    return _paddingRight(1, this);
  }

  Widget get pr_2 {
    return _paddingRight(2, this);
  }

  Widget get pr_4 {
    return _paddingRight(4, this);
  }

  Widget get pr_5 {
    return _paddingRight(5, this);
  }

  Widget get pr_6 {
    return _paddingRight(6, this);
  }

  Widget get pr_7 {
    return _paddingRight(7, this);
  }

  Widget get pr_10 {
    return _paddingRight(10, this);
  }

  Widget get px_0 {
    return _paddingSymmetric(0, 0, this);
  }

  Widget get px_1 {
    return _paddingSymmetric(1, 0, this);
  }

  Widget get px_2 {
    return _paddingSymmetric(2, 0, this);
  }

  Widget get px_4 {
    return _paddingSymmetric(4, 0, this);
  }

  Widget get px_5 {
    return _paddingSymmetric(5, 0, this);
  }

  Widget get px_6 {
    return _paddingSymmetric(6, 0, this);
  }

  Widget get px_7 {
    return _paddingSymmetric(7, 0, this);
  }

  Widget get px_10 {
    return _paddingSymmetric(10, 0, this);
  }

  Widget get py_0 {
    return _paddingSymmetric(0, 0, this);
  }

  Widget get py_1 {
    return _paddingSymmetric(0, 1, this);
  }

  Widget get py_2 {
    return _paddingSymmetric(0, 2, this);
  }

  Widget get py_4 {
    return _paddingSymmetric(0, 4, this);
  }

  Widget get py_5 {
    return _paddingSymmetric(0, 5, this);
  }

  Widget get py_6 {
    return _paddingSymmetric(0, 6, this);
  }

  Widget get py_7 {
    return _paddingSymmetric(0, 7, this);
  }

  Widget get py_10 {
    return _paddingSymmetric(0, 10, this);
  }
}

Widget _paddingAll(double value, Widget child) {
  return Padding(
    padding: EdgeInsets.all(value),
    child: child,
  );
}

Widget _paddingSymmetric(double x, double y, Widget child) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: x, vertical: y),
    child: child,
  );
}

Widget _paddingLeft(double value, Widget child) {
  return Padding(
    padding: EdgeInsets.only(left: value),
    child: child,
  );
}

Widget _paddingRight(double value, Widget child) {
  return Padding(
    padding: EdgeInsets.only(right: value),
    child: child,
  );
}

Widget _paddingBottom(double value, Widget child) {
  return Padding(
    padding: EdgeInsets.only(bottom: value),
    child: child,
  );
}

Widget _paddingTop(double value, Widget child) {
  return Padding(
    padding: EdgeInsets.only(top: value),
    child: child,
  );
}
