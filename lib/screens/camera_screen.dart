import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:transactions_viewer/controllers/contract_info_controller.dart';
import 'package:transactions_viewer/screens/loading_page.dart';
import 'package:transactions_viewer/screens/pdf_viewer_screen.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  String scannedQr = '';

  bool loading = false;

  bool showCamera = false;

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  @override
  Widget build(BuildContext context) {
    return loading == true
        ? LoadingPage(text: 'جاري التحميل')
        : Scaffold(
            body: SafeArea(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 50.0,
                  ),
                  const Divider(),
                  ElevatedButton(
                    onPressed: () => setState(() => showCamera = !showCamera),
                    child: Text(
                      showCamera
                          ? 'أضغط لاخفاء الكاميرا'
                          : 'اضغط لاظهار الكاميرا',
                      style: GoogleFonts.cairo(fontSize: 24),
                    ),
                  ),
                  const Divider(),
                  showCamera != true
                      ? Text(
                          'الكاميرا مخفيه',
                          style: GoogleFonts.cairo(fontSize: 24),
                        )
                      : Expanded(
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
                  showCamera != true
                      ? Container()
                      : Expanded(
                          flex: 1,
                          child: Center(
                            child: (result != null)
                                ? ElevatedButton(
                                    onPressed: () async {
                                      setState(() => loading = true);

                                      PersonalContractInfoController _pers =
                                          Get.put(
                                              PersonalContractInfoController(
                                                  qrCode: result!.code));

                                      Get.to(() => const PDFViewer());

                                      setState(() => loading = false);
                                      _pers.dispose();
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      child: Text(
                                        '${result!.code} :  اضغط هنا لمعرفة التفاصيل',
                                        style: GoogleFonts.cairo(fontSize: 24),
                                      ),
                                    ),
                                  )
                                : showCamera
                                    ? Text(
                                        'امسح الرمز لمعرفة التفاصيل',
                                        style: GoogleFonts.cairo(fontSize: 24),
                                      )
                                    : Container(),
                          ),
                        )
                ],
              ),
            ),
          );
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
