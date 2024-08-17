import 'package:assignment_test/algorithm/algorithm.dart';
import 'package:assignment_test/constants/colors_app.dart';
import 'package:assignment_test/constants/dimension_app.dart';
import 'package:assignment_test/constants/static_app.dart';
import 'package:assignment_test/constants/text_style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment Test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height = sizeScreen(context, StaticApp.height) -
        paddingScreen(context, StaticApp.top) -
        paddingScreen(context, StaticApp.bottom);
    return Scaffold(
      backgroundColor: ColorsApp.white,
      body: Container(
        margin: EdgeInsets.fromLTRB(
          0,
          paddingScreen(context, StaticApp.top),
          0,
          0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: height / 15,
                padding:
                    const EdgeInsets.symmetric(horizontal: DimensionApp.size10),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                            alignment: Alignment.centerLeft,
                            child: Image.asset("assets/images/logo.png"))),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  right: DimensionApp.size10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Handicrafted by",
                                    style: TextStyleApp.inter_s12_b_grey.style,
                                  ),
                                  Text(
                                    "Jim HLS",
                                    style: TextStyleApp.inter_s10_b_black.style,
                                  ),
                                ],
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: ColorsApp.white,
                              child: Image.asset(
                                "assets/images/avatar.png",
                                fit: BoxFit.fill,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: height * 3 / 15,
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(
                    DimensionApp.size20,
                    DimensionApp.size20,
                    DimensionApp.size20,
                    DimensionApp.size20),
                decoration: BoxDecoration(color: ColorsApp.green),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(bottom: DimensionApp.size15),
                      child: Text(
                        "A joke a day keeps the doctor away",
                        style: TextStyleApp.inter_s18_bl_white.style,
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        "If you joke wrong way, your teeth have to pay. (Serious)",
                        style: TextStyleApp.inter_s12_b_white.style,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: height * 8 / 15,
                padding: const EdgeInsets.fromLTRB(DimensionApp.size20,
                    DimensionApp.size50, DimensionApp.size20, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "A child asked his father, \"How were people born?\" So his father said,\"Adam and Eve made babies, then their babies became adults anda made babies, and so on.\" The child then went to his mother, asker her the same question and she told him, \"We were mon-keys then we evolved to become like we are now.\" The child ran back to his father and said, \"You lied to me!\" His father replied, \"No, your mom was talking about her side of the family.\"",
                      textAlign: TextAlign.justify,
                      style: TextStyleApp.inter_s14_b_grey1.style,
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(bottom: DimensionApp.size40),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                                  margin: const EdgeInsets.fromLTRB(
                                      DimensionApp.size30,
                                      0,
                                      DimensionApp.size20,
                                      0),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Algorithm.maxMinSum();
                                    },
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      backgroundColor: ColorsApp.blue,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                    ),
                                    child: Text(
                                      "This is Funny!",
                                      style:
                                          TextStyleApp.inter_s15_b_white.style,
                                    ),
                                  ))),
                          Expanded(
                              child: Container(
                                  margin: const EdgeInsets.fromLTRB(
                                      DimensionApp.size20,
                                      0,
                                      DimensionApp.size30,
                                      0),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      backgroundColor: ColorsApp.green,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                    ),
                                    child: Text(
                                      "This is not funny.",
                                      style:
                                          TextStyleApp.inter_s15_b_white.style,
                                    ),
                                  )))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 3 / 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Divider(
                      color: ColorsApp.grey2,
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(
                          DimensionApp.size10,
                          DimensionApp.size5,
                          DimensionApp.size10,
                          DimensionApp.size10),
                      child: Text(
                        "This appis created as part of Hlsolutions program. The materials con-tained on this website are provided for general information only and do not constitute any form of advice. HLS assumes no responsibility for the accuracy of any particular statement and accepts no liability for any loss or damage which may arise from reliance on the infor-mation contained on this site.",
                        textAlign: TextAlign.center,
                        style: TextStyleApp.inter_s12_b_grey.style,
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        "Copyright 2021 HLS",
                        style: TextStyleApp.inter_s13_b_grey1.style,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
