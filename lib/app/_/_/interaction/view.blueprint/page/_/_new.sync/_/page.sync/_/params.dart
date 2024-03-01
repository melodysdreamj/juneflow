import 'package:flutter/material.dart';

import '../../../../../../../../../../../util/start_app.dart';

class NewParams {
  // 1. add parameters here
  // String param;

  NewParams(// 2. add parameters here
      // this.param
      );

  toJson() {
    Map<String, dynamic> json = {};
    // 3. add parameters here
    // json['param'] = param;
    return json;
  }

  static NewParams fromUri(BuildContext context, Uri uri) {
    return NewParams(
        // 4. add parameters here
        // uri.queryParameters['param']
        );
  }
}
