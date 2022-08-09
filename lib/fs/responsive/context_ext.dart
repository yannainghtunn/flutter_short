import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  bool get isPhone => MediaQuery.of(this).size.width < 600;
  bool get isTablet =>
      MediaQuery.of(this).size.width < 1080 &&
      MediaQuery.of(this).size.width >= 600;
  bool get isDesktop => MediaQuery.of(this).size.width >= 1080;

  Widget hideIfPhone(Widget child) => this.isPhone ? Container() : child;
  Widget hideIfTablet(Widget child) => this.isTablet ? Container() : child;
  Widget hideIfDesktop(Widget child) => this.isDesktop ? Container() : child;
}
