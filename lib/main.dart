import 'package:flutter/material.dart';

import 'util/config/global_imports.dart';
export 'util/config/global_imports.dart';

main() {
  return buildApp();
}

class InitView extends StatelessWidget {
  const InitView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                const SizedBox(height: 20),
                Text("New App",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                basicButton(context, "New Button", () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
