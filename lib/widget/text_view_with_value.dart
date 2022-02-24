import 'package:flutter/material.dart';
import 'package:transactions_viewer/widget/text_view.dart';

textViewWithValue(text, value) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 4.0),
    child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(vertical: 8.0 , horizontal: 2.0),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(210, 190, 110, 1),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          textView(value),
          const Divider(
            color: Colors.black,
          ),
        ],
      ),
    ),
  );
}
