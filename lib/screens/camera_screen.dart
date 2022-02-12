import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:transactions_viewer/controllers/contract_info_controller.dart';

import '../color_config.dart';

class CameraScreen extends StatefulWidget {
  CameraScreen({Key? key}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  String scannedQr = '';

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  @override
  Widget build(BuildContext context) {
    final PersonalContractInfoController _personalContractInfoController =
        Get.put(PersonalContractInfoController());

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                margin: const EdgeInsets.all(15.0),
                child: QRView(
                  key: qrKey,
                  onQRViewCreated: _onQRViewCreated,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: (result != null)
                    ? GestureDetector(
                        onTap: () async {
                          await _personalContractInfoController
                              .getContractDetails(result!.code);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: GOLD_COLOR,
                          ),
                          child: Text(
                            '${result!.code} :  اضغط هنا لمعرفة التفاصيل',
                            style: GoogleFonts.cairo(fontSize: 24),
                          ),
                        ),
                      )
                    : Text(
                        'امسح الرمز لمعرفة التفاصيل',
                        style: GoogleFonts.cairo(fontSize: 24),
                      ),
              ),
            )
          ],
        ),
      ),
    );
    //  SafeArea(
    //   child: Scaffold(
    //     appBar: AppBar(
    //       title: Center(
    //         child: Text(
    //           'صفحة قراءة الرمز',
    //           style: GoogleFonts.cairo(fontSize: 24),
    //         ),
    //       ),
    //       automaticallyImplyLeading: false,
    //     ),
    //     body: Center(
    //       child: ElevatedButton(
    //         onPressed: () async =>
    //             await _personalContractInfoController.getContractDetails(),
    //         child: Text(
    //           'فتح الكاميرا',
    //           style: GoogleFonts.cairo(
    //             fontSize: 20.0,
    //             fontWeight: FontWeight.w600,
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
