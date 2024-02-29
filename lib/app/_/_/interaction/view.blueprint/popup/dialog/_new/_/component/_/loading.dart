import 'package:flutter/material.dart';

import '../../../../../../../../../../../../util/start_app.dart';
import 'params.dart';

class LoadingComponent extends StatelessWidget {
  const LoadingComponent({
    super.key,
    required this.params,
    required this.tag,
  });

  final NewParams params;
  final String? tag;

  @override
  Widget build(BuildContext context) {
    return Container().height(100).width(100);
  }
}
