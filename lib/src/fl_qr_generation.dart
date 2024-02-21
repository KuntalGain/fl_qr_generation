import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRGenerator {
  static Widget generate(
      {required String link,
      Color foregroundColor = Colors.black,
      Color backgroundColor = Colors.white}) {
    return QrImageView(
      data: link,
      // ignore: deprecated_member_use
      foregroundColor: foregroundColor,
      backgroundColor: backgroundColor,
    );
  }
}
