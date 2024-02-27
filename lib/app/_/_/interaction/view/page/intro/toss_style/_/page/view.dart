import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_color/flutter_color.dart';
import 'package:tuple/tuple.dart';

import '../../../../../../../../../../util/start_app.dart';
import '../../flow_list_view/component.dart';
import 'state.dart';
import '_/params.dart';
import '_/util/navigator.dart';
import '_/util/view_skeleton.dart';

class V extends StatefulWidget {
  const V({super.key, this.tag, required this.params, required this.slug});

  final String? tag;
  final NewParams params;
  final String? slug;

  @override
  State<V> createState() => _VState();
}

class _VState extends State<V> {
  List<Tuple3<String, String, String>> introData = [];

  @override
  void initState() {
    super.initState();
    introData.add(Tuple3('assets/sample/page/intro/toss_style/money.png',
        "Hidden insurance\nFind", ""));
    introData.add(Tuple3('assets/sample/page/intro/toss_style/money2.png',
        "Lifetime\nFree remittance", ""));
    introData.add(Tuple3('assets/sample/page/intro/toss_style/bank.png',
        "Toss Bank", "Prime bank"));
    introData.add(Tuple3('assets/sample/page/intro/toss_style/hospital.png',
        "Medical expenses\nGet refunded", ""));
    introData.add(Tuple3('assets/sample/page/intro/toss_style/vaccine.png',
        "Free\nVaccine insurance", ""));
    introData.add(Tuple3('assets/sample/page/intro/toss_style/money4.png',
        "Government subsidy\nFind", ""));
    introData.add(Tuple3('assets/sample/page/intro/toss_style/stock.png',
        "Toss Securities\nTrade stocks easily", ""));
  }

  @override
  Widget build(BuildContext context) {
    return JuneBuilder(
      () => NewState(),
      tag: widget.tag,
      autoRemove: false,
      builder: (state) => SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gap(60),
              Text("Everything about finance")
                  .textStyle(Theme.of(context).textTheme.headline5!)
                  .fontWeight(FontWeight.bold),
              Text("Easily with Toss")
                  .textStyle(Theme.of(context).textTheme.headline5!)
                  .fontWeight(FontWeight.bold),
              const Spacer(
                flex: 5,
              ),
              Container(
                height: 235,
                width: double.infinity,
                child: Stack(
                  children: [
                    FlowListView(
                      padding: 5,
                      itemWidget: (index) {
                        // return TossIntroStyleItem1(
                        //   context,
                        //   imageProvider: MyImageProvider1(
                        //       assetPath:
                        //       introData[index % introData.length].item1),
                        //   title: introData[index % introData.length].item2,
                        //   subTitle: introData[index % introData.length].item3,
                        // );
                        //
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Gap(5),
                            // fit: BoxFit.contain
                            Container(
                              height: 100,
                              width: 120,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      introData[index % introData.length]
                                          .item1),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            // MyImage1(
                            //     imageProvider: imageProvider,
                            //     borderRadius: 10,
                            //     h: 100,
                            //     w: 120,
                            //     fit: BoxFit.contain),
                            Gap(20),
                            AutoSizeText(
                              introData[index % introData.length].item2,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(fontWeight: FontWeight.bold),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              introData[index % introData.length].item3,
                            )
                                .textColor(Colors.grey)
                                .fontWeight(FontWeight.bold)
                                .textAlignment(TextAlign.center)
                                .textStyle(Theme.of(context)
                                .textTheme
                                .bodyText1!),
                            Gap(5),
                          ],
                        )
                            .padding(horizontal: 10)
                            .height(223)
                            .width(180)
                            .decorated(
                            borderRadius: BorderRadius.circular(20),
                            color: (MediaQuery.of(context).platformBrightness == Brightness.dark)
                                ? Theme.of(context)
                                .scaffoldBackgroundColor
                                .lighter(3)
                                : Theme.of(context)
                                .scaffoldBackgroundColor);
                      },
                      modeSpeed: 45,
                      axis: Axis.horizontal,
                      w: double.infinity,
                      h: 235,
                    ),
                    Container().height(235).width(double.infinity).decorated(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Theme.of(context).scaffoldBackgroundColor,
                            Theme.of(context)
                                .scaffoldBackgroundColor
                                .withOpacity(0.65),
                            Theme.of(context)
                                .scaffoldBackgroundColor
                                .withOpacity(0),
                            Theme.of(context)
                                .scaffoldBackgroundColor
                                .withOpacity(0),
                            Theme.of(context)
                                .scaffoldBackgroundColor
                                .withOpacity(0),
                            Theme.of(context)
                                .scaffoldBackgroundColor
                                .withOpacity(0.65),
                            Theme.of(context).scaffoldBackgroundColor,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(0)),
                  ],
                ),
              ),
              const Spacer(
                flex: 4,
              ),
              OutlinedButton(
                onPressed: () {
                  log("clicked");
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(
                      color: Theme.of(context).textTheme.bodyMedium!.color!,
                      width: 2), // 테두리 색상과 두께 설정
                ),
                child: Text("Get started")
                    .fontWeight(FontWeight.bold)
                    .textColor(Theme.of(context).textTheme.bodyMedium!.color!)
                    .padding(vertical: 15, horizontal: 20),
              )
                  .padding(
                horizontal: 20,
                vertical: 7,
              )
                  .width(1.sw),
              Gap(20),
            ],
          ),
          // floatingActionButton: FloatingActionButtonKit(),
        ),
      ),
    );
  }
}

main() async {
  return await startApp(home: NewView(params: NewParams()));

  // return await startApp(callAfterBuild: (context) async {
  //   NewNavigator(
  //     NewParams(),
  //     tag: "someTag"
    // ).withoutRouterMovePage(
    //   context,
    // );
  // });
}
