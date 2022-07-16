import 'package:flutter/material.dart';
import 'package:teampage2/member.dart';
import 'package:teampage2/textbox.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
      builder: (context, child) => ResponsiveWrapper.builder(child,
          maxWidth: 1400,
          minWidth: 360,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(480, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ],
          background: Container(color: Color(0xff2E5B40))),
      initialRoute: "/",
    );
  }
}

class MyPage extends StatelessWidget {
  MyPage({Key? key}) : super(key: key);

  // _getHeightSize(GlobalKey key) {
  //   if (key.currentContext != null) {
  //     final RenderBox renderBox =
  //         key.currentContext!.findRenderObject() as RenderBox;
  //     Size size = renderBox.size;
  //     dynamic height = size.height;
  //     return height;
  //   }
  // }
  //
  // late GlobalKey _containerKey = GlobalKey();
  // late final containerHeightSize = _getHeightSize(_containerKey);

  @override
  Widget build(BuildContext context) {
    final med = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2E5B40),
        elevation: 0.0,
      ),
      backgroundColor: Color(0xff2E5B40),
      body: SingleChildScrollView(
        child: Container(
            color: Color(0xff2E5B40),
            width: double.infinity,
            padding: EdgeInsets.only(
                top: med.size.height * 0.02,
                left: med.size.width * 0.1,
                right: med.size.width * 0.1),
            child: Column(children: [
              Container(
                width: double.infinity,
                child: Wrap(alignment: WrapAlignment.spaceBetween, children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextBox134('134', 'Creative', 'Lab').textBox(),
                        SizedBox(
                          height: 50,
                        ),
                        TextBox134('We do', 'a lot of things', 'for cozy life')
                            .textBox(),
                        SizedBox(
                          height: 50,
                        ),
                      ]),
                  SizedBox(
                    width: 200,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Member('Younghoon Kim', 'Product designer / Developer',
                                'younghoon.kim@134creativelab.com')
                            .teamMember(),
                        SizedBox(
                          height: 30,
                        ),
                        Member('Myungsik Kim', 'Developer',
                                'myungsik.kim@134creativelab.com')
                            .teamMember(),
                        SizedBox(
                          height: 30,
                        ),
                        Member('Yundong Min', 'UX Researcher / Developer',
                                'yundong.min@134creativelab.com')
                            .teamMember(),
                      ]),
                ]),
              ),
              SizedBox(
                height: med.size.height * 0.05,
              ),
              Stack(children: [
                Container(
                    height: 200,
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 10, left: 10),
                    color: Color(0xff265037),
                    child: null),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 225,
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        'assets/imgs/img.png',
                        width: med.size.width * 0.6,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 240,
                )
              ]),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello@134creativelab.com',
                      textScaleFactor: 0.9,
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontFamily: "Volte",
                      ),
                    ),
                    Text(
                      'Copyright by 134CreativeLab 2022. All right reserved.',
                      textScaleFactor: 0.75,
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontFamily: "Volte",
                      ),
                    )
                  ],
                ),
              )
            ])),
      ),
    );
  }
}
