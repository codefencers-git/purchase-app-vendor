import 'package:flutter/material.dart';

extension SizedBoxDoubleUtils on double {
  Widget get sbh => SizedBox(height: this);
  Widget get sbw => SizedBox(width: this);
}

extension SizedBoxIntUtils on int {
  Widget get sbh => SizedBox(height: toDouble());
  Widget get sbw => SizedBox(width: toDouble());
}

extension SizedBoxStringUtils on String {
  Widget get sb {
    var list = split('x');
    return SizedBox(
        width: double.parse(list[0]), height: double.parse(list[1]));
  }
}
