import 'package:flutter/material.dart';

import '../../../../../../../../../../../../util/start_app.dart';
import 'params.dart';

class LoadingComponent extends StatelessWidget {
  const LoadingComponent({
    super.key,
    required this.params,
    required this.tag,
    required this.slug,
  });

  final NewParams params;
  final String? tag;
  final String? slug;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Container(),
      ),
    );
  }
}
