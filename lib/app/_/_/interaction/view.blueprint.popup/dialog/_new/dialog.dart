import 'package:flutter/material.dart';

import '../../../../../../../../../../main.dart';
import '_/view.dart';

void NewDialog(BuildContext context) async {
  showDialog(
      context: context,
      barrierDismissible: true, // 다른영역클릭시 사리질지 여부 결정
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: NewView(),
        );
      });
}
