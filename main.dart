import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'lib/iframe_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget footer() {
      return Container(
        width: double.infinity,
        height: 100,
        color: Colors.black,
        child: Center(
          child: Text(
            'ANDI ROZI SYAFIRAH  •  MUHAMMAD IQBAL TRI PUTRA  •  MUHAMMAD IRFANSYAH',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xffFBF5F5),
            ),
          ),
        ),
      );
    }

    Widget card(String number) {
      return Column(
        children: [
          Container(
            height: 444,
            width: 345,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xffFFC6C6),
                  Color(0xffE78F8F),
                ],
              ),
            ),
          ),
          const SizedBox(height: 14),
          Text(
            '(modifan ${number})',
            style: TextStyle(
              fontSize: 36,
            ),
          ),
        ],
      );
    }

    Widget body2() {
      return SizedBox(
        width: double.infinity,
        // height: 622,
        // color: Colors.amber,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 174, vertical: 62),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              card('1'),
              card('2'),
            ],
          ),
        ),
      );
    }

    Widget body1() {
      return Stack(
        children: [
          Container(
            width: double.infinity,
            height: 720,
            // padding: const EdgeInsets.symmetric(vertical: 83, horizontal: 37),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff031332),
                  Color(0xff000C22),
                ],
              ),
            ),
            child: Container(
              width: 1206,
              height: 478,
              margin: const EdgeInsets.symmetric(
                vertical: 90,
                horizontal: 37,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffFBF5F5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 49, top: 42),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'NAMA\nMOBIL',
                          style: TextStyle(
                            fontSize: 90,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(height: 13),
                        Text(
                          'Lorem Ipsum gatau tulis\napa sini biar ga kosong',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const SizedBox(height: 121),
                        SizedBox(
                          width: 98,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/drop_down.png',
                                height: 13,
                                width: 13,
                                color: const Color(0xff1E1E1E),
                              ),
                              Text(
                                'Modif',
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w200,
                                  color: Color(
                                    0xff1E1E1E,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WebViewTest(),
                    ));
              },
              child: Container(
                margin: const EdgeInsets.only(
                  // right: 30,
                  top: 400,
                ),
                height: 339,
                width: 787,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/car.png'),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          body1(),
          body2(),
          footer(),
        ],
      ),
    );
  }
}

class WebViewTest extends StatelessWidget {
  const WebViewTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IframeScreen(),
    );
  }
}
