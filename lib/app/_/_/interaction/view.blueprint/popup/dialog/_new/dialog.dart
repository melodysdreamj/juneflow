import 'package:flutter/material.dart';

import '../../../../../../../../util/start_app.dart';
import '_/component/_/util/view_skeleton.dart';

void NewDialog(BuildContext context) async {
  showDialog(
      context: context,
      barrierDismissible: true, // 다른영역클릭시 사리질지 여부 결정
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: NewView(
            params: NewParams(),
          ),
        );
      });
}
