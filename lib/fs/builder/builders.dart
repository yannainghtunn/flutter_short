part of '../fs_extensions.dart';

class _StringExt {
  String _text;
  TextDecoration? _decoration;
  double _fontSize = 14;
  TextStyle? _style;
  Color _color = Colors.black;

  FontWeight? _fontWeight;
  _StringExt(this._text);

  Widget get build {
    return Text(_text,
        style: _style ??
            TextStyle(
              color: _color,
              fontSize: 14,
              decoration: _decoration,
            ));
  }

  _StringExt color(Color color) {
    return this.._color = color;
  }

  _StringExt fontSize(double size) {
    return this.._fontSize = size;
  }

  _StringExt style(TextStyle style) {
    return this.._style = style;
  }

  _StringExt get underline {
    return this.._decoration = TextDecoration.underline;
  }

  _StringExt get line_through {
    return this.._decoration = TextDecoration.lineThrough;
  }

  _StringExt get bold {
    return this.._fontWeight = FontWeight.bold;
  }

  _StringExt get w100 {
    return this.._fontWeight = FontWeight.w100;
  }

  _StringExt get w200 {
    return this.._fontWeight = FontWeight.w200;
  }

  _StringExt get w300 {
    return this.._fontWeight = FontWeight.w300;
  }

  _StringExt get w400 {
    return this.._fontWeight = FontWeight.w400;
  }

  _StringExt get w500 {
    return this.._fontWeight = FontWeight.w500;
  }

  _StringExt get w600 {
    return this.._fontWeight = FontWeight.w600;
  }

  _StringExt get w700 {
    return this.._fontWeight = FontWeight.w700;
  }

  _StringExt get w800 {
    return this.._fontWeight = FontWeight.w800;
  }

  _StringExt get w900 {
    return this.._fontWeight = FontWeight.w900;
  }

  _StringExt get font_sm {
    return this.._fontSize = 12;
  }

  _StringExt get font_xs {
    return this.._fontSize = 10;
  }

  _StringExt get font_md {
    return this.._fontSize = 14;
  }

  _StringExt get font_lg {
    return this.._fontSize = 16;
  }

  _StringExt get font_xl {
    return this.._fontSize = 18;
  }

  _StringExt get font_2xl {
    return this.._fontSize = 20;
  }

  _StringExt get font_3xl {
    return this.._fontSize = 22;
  }

  _StringExt get font_4xl {
    return this.._fontSize = 24;
  }

  _StringExt get green {
    return this.._color = Colors.green;
  }

  _StringExt get red {
    return this.._color = Colors.red;
  }

  _StringExt get redAccent {
    return this.._color = Colors.redAccent;
  }

  _StringExt get greenAccent {
    return this.._color = Colors.greenAccent;
  }

  _StringExt get yellow {
    return this.._color = Colors.yellow;
  }

  _StringExt get yellowAccent {
    return this.._color = Colors.yellowAccent;
  }

  _StringExt get purple {
    return this.._color = Colors.purple;
  }

  _StringExt get purpleAccent {
    return this.._color = Colors.purpleAccent;
  }

  _StringExt get blue {
    return this.._color = Colors.blue;
  }

  _StringExt get blueAccent {
    return this.._color = Colors.blueAccent;
  }

  _StringExt get white {
    return this.._color = Colors.white;
  }

  _StringExt get black {
    return this.._color = Colors.black;
  }

  _StringExt get grey {
    return this.._color = Colors.grey;
  }
}

class _ScrollExt {
  Widget _child;
  _ScrollExt(this._child);

  Axis _direction = Axis.vertical;
  ScrollPhysics? _physics;
  _ScrollExt physics(ScrollPhysics physics) {
    return this.._physics = physics;
  }

  _ScrollExt get horizontal {
    return this.._direction = Axis.horizontal;
  }

  _ScrollExt get vertical {
    return this.._direction = Axis.vertical;
  }

  _ScrollExt get bounced {
    return this.._physics = BouncingScrollPhysics();
  }

  Widget get build {
    return SingleChildScrollView(
      scrollDirection: _direction,
      child: _child,
      physics: _physics,
    );
  }
}

class _ExpandedExt {
  int _flex = 1;
  Widget _child;
  _ExpandedExt(this._child);
  _ExpandedExt flex(int flex) {
    return this.._flex = flex;
  }

  _ExpandedExt get flex_0 {
    return this.._flex = 0;
  }

  _ExpandedExt get flex_1 {
    return this.._flex = 1;
  }

  _ExpandedExt get flex_2 {
    return this.._flex = 2;
  }

  _ExpandedExt get flex_3 {
    return this.._flex = 3;
  }

  Widget get build {
    return Expanded(
      child: _child,
      flex: _flex,
    );
  }
}
