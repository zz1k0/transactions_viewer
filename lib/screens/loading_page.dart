import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:transactions_viewer/color_config.dart';

class LoadingPage extends StatelessWidget {
  final String text;
  LoadingPage({required this.text});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  text,
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
              SpinKitFadingCircle(
                itemBuilder: (BuildContext context, int index) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                      color: index.isEven ? GREEN_COLOR : GOLD_COLOR,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
