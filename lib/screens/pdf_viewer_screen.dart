import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PDFViewer extends StatelessWidget {
  const PDFViewer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
    return Scaffold(
      body: SafeArea(
        child: SfPdfViewer.network(
          'https://unec.edu.az/application/uploads/2014/12/pdf-sample.pdf',
          key: _pdfViewerKey,
        ),
      ),
    );
  }
}
