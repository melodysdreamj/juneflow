import '../../../../../../../../../main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../view.dart';

@JuneViewChild()
class StateChild extends NewViewState {
  bool isReadyView = false;

  late StateChild state;

  StateChild() {
    state = this;
  }

  @override
  void initState() {
    if (ignoreReadyView()) {
      isReadyView = true;
    } else {
      _ready();
    }

    super.initState();
  }

  Future<void> _ready() async {
    if (!ignoreReadyView()) {
      await readyState(context);
    }
    if (mounted) {
      setState(() {
        isReadyView = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!isReadyView) {
      return loadingWidget();
    }

    return super.build(context);
  }

  /// automatically generated action code - don't change this code

  /// end of automatically action generated code
  /// automatically generated event code - don't change this code

  /// end of automatically event generated code
}
