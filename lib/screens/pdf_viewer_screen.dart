import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:transactions_viewer/controllers/contract_info_controller.dart';

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

  @override
  Widget build(BuildContext context) {
    // TODO: implement initState
    final PersonalContractInfoController _personalContractInfoController =
        Get.put(PersonalContractInfoController());

    var pdfUrl = _personalContractInfoController.getPDFUrl().toString();
    final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
    return Scaffold(
      body: SafeArea(
        child: pdfUrl.isNotEmpty
            ? SfPdfViewer.network(
                pdfUrl.toString(),
                key: _pdfViewerKey,
              )
            : const Center(
                child: Text('loading...'),
              ),
      ),
    );
  }
}
