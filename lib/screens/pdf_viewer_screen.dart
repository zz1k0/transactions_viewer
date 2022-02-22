import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:transactions_viewer/controllers/contract_info_controller.dart';
import 'package:transactions_viewer/screens/home_screen.dart';
import 'package:transactions_viewer/widget/text_view_with_value.dart';

class PDFViewer extends StatefulWidget {
  const PDFViewer({Key? key}) : super(key: key);

  @override
  State<PDFViewer> createState() => _PDFViewerState();
}

class _PDFViewerState extends State<PDFViewer> {
  @override
  void initState() {
    super.initState();
  }

  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    // TODO: implement initState
    final PersonalContractInfoController _personalContractInfoController =
        Get.put(PersonalContractInfoController());

    return WillPopScope(
      onWillPop: () async {
        _personalContractInfoController.dispose();
        Get.off(const HomeScreen());
        return false;
      },
      child: Scaffold(
        body: SafeArea(
          child:
              // _personalContractInfoController.vailedUrl.value == true
              true == true
                  ? SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () => Get.to(
                                JustContractView(),
                              ),
                              child: Text(
                                "عرض العقد لوحده",
                                style: GoogleFonts.cairo(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          const Divider(),
                          // _personalContractInfoController.vailedUrl.value != true
                          //     ? Padding(
                          //         padding: const EdgeInsets.all(12.0),
                          //         child: Text(
                          //           "لايوجد ملف بهذا الاسم",
                          //           style: GoogleFonts.cairo(
                          //             fontSize: 20,
                          //           ),
                          //         ),
                          //       )
                          //     :
                          Container(
                            height: 500,
                            padding: const EdgeInsets.all(5.0),
                            child: SfPdfViewer.network(
                              'http://138.68.80.117/Reports/4ac208f5-e7d3-495d-8987-dc4d525cf5de.Pdf',
                              key: _pdfViewerKey,
                            ),
                          ),
                          textViewWithValue('من المستخدم',
                              _personalContractInfoController.fromUser.value),
                          textViewWithValue('الى المستخدم',
                              _personalContractInfoController.toUser.value),
                          textViewWithValue(
                              ' صلاحية العقد',
                              _personalContractInfoController.isCanceled.value
                                          .toString()
                                          .toLowerCase() ==
                                      'true'
                                  ? 'ملغي'
                                  : 'غير ملغي'),
                          textViewWithValue(
                              'حالة العقد',
                              _personalContractInfoController.isRejected.value
                                          .toString()
                                          .toLowerCase() ==
                                      'true'
                                  ? 'ملغي'
                                  : 'غير ملغي'),
                        ],
                      ),
                    )
                  : Center(
                      child: Container(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () => Get.back(),
                              child: Text(
                                "اضغط هنا للرجوع",
                                style: GoogleFonts.cairo(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
        ),
      ),
    );
  }
}

class JustContractView extends StatelessWidget {
  JustContractView({Key? key}) : super(key: key);
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SfPdfViewer.network(
          'http://138.68.80.117/Reports/4ac208f5-e7d3-495d-8987-dc4d525cf5de.Pdf',
          key: _pdfViewerKey,
        ),
      ),
    );
  }
}
