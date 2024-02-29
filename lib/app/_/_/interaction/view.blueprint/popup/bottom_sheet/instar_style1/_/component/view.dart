import 'package:flutter/material.dart';

import '../../../../../../../../../../util/start_app.dart';
import 'state.dart';
import '_/params.dart';
import '_/config/view_skeleton.dart';

class V extends StatefulWidget {
  const V({super.key, this.tag, required this.params});

  final String? tag;
  final NewParams params;

  @override
  State<V> createState() => _VState();
}

class _VState extends State<V> {
  @override
  Widget build(BuildContext context) {
    return JuneBuilder(
      () => NewState(),
      tag: widget.tag,
      autoRemove: false,
      builder: (state) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Gap(30),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.black, width: 2, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(1000),
              // color: Colors.yellowAccent,
            ),
            child: SvgPicture.asset(
              'assets/sample/bottom_sheet/instar_style1/follower.svg',
              colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
            ).paddingDirectional(all: 15),
          ),
          Gap(10),
          Text("Activate after login").fontSize(20).fontWeight(FontWeight.w600),
          Gap(10),
          Text("You can use this feature after logging in.")
              .fontSize(14)
              .textColor(Colors.grey),
          Gap(30),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              side: BorderSide(color: Colors.black, width: 2), // 테두리 색상과 두께 설정
            ),
            child: Text('Login')
                .fontWeight(FontWeight.bold)
                .textColor(Colors.black)
                .padding(vertical: 15, horizontal: 20),
          ),
          Gap(30),
        ],
      ),
    );
  }
}

main() async {
  return await startApp(
      home: SafeArea(
    child: NewView(
      // tag: "someTag",
      params: NewParams(),
    ),
  ));
}
