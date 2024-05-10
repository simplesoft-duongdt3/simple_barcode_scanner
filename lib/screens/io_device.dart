import 'dart:io';

import 'package:flutter/material.dart';
import 'package:simple_barcode_scanner/enum.dart';

/// Barcode scanner for mobile and desktop devices
class BarcodeScanner extends StatelessWidget {
  final String lineColor;
  final String cancelButtonText;
  final bool isShowFlashIcon;
  final ScanType scanType;
  final Function(String) onScanned;
  final String? appBarTitle;
  final bool? centerTitle;
  final Widget? child;
  const BarcodeScanner({
    super.key,
    required this.lineColor,
    required this.cancelButtonText,
    required this.isShowFlashIcon,
    required this.scanType,
    required this.onScanned,
    this.child,
    this.appBarTitle,
    this.centerTitle,
  });

  @override
  Widget build(BuildContext context) {
    /// Scan Android and ios barcode scanner with flutter_barcode_scanner
    _scanBarcodeForMobileAndTabDevices();
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  _scanBarcodeForMobileAndTabDevices() async {
    onScanned('');
  }
}
