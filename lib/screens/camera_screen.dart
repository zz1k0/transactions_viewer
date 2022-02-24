import 'package:flutter/material.dart';
import 'package:flutter_beep/flutter_beep.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:torch_light/torch_light.dart';
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
  bool isTorchOn = false ;

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

                  ElevatedButton(onPressed: ()async =>
                  await controller?.toggleFlash() , child:   Text('فلاش',
                    style: GoogleFonts.cairo(fontWeight: FontWeight.bold ,fontSize: 20),),
                  ),



                  ElevatedButton(
                    onPressed: () => setState(() {
                      showCamera = !showCamera;
                      if(showCamera == false) {
                        result = null ;
                        controller?.dispose();
                      }
                    }),
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
                            margin: const EdgeInsets.symmetric(vertical: 10.0 , horizontal: 15.0),
                            child: QRView(
                              key: qrKey,
                              onQRViewCreated: _onQRViewCreated,
                              cameraFacing: CameraFacing.back,
                            ),
                          ),
                        ),
                  showCamera != true
                      ? Container()
                      : Expanded(
                          flex: 2,
                          child: Center(
                            child: (result != null)
                                ? Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(25.0),
                              ),
                              child: SingleChildScrollView(
                                child:
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                  ],
                                ),
                              ),
                            ) :Center(
                              child:  Text(
                                'امسح الرمز لمعرفة التفاصيل',
                                style: GoogleFonts.cairo(fontSize: 20),
                              ),
                            ),
                          ),
                  ),
                ],
              ),
            ),
          );
  }

  Future<void> _onQRViewCreated(QRViewController controller ) async {
    this.controller = controller;
    PersonalContractInfoController _pers =  Get.put(
        PersonalContractInfoController());
    controller.scannedDataStream.listen((scanData) {
    }).onData((data) {

      setState(() {
        controller.pauseCamera();
        //start loading
        setState(() => loading = true);
        result = data;
        FlutterBeep.playSysSound(20);
        _pers.qrCode.value  = data.code! ;

        Get.to(() => const PDFViewer());
        //stop loading
        setState(() => loading = false);
      });
    });

  }




  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
