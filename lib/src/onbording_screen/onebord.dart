import 'package:flutter/material.dart';
import 'package:lexilearn/src/Login_register/welcome.dart';
import 'package:lexilearn/src/test/test.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onebord extends StatefulWidget {
  onebord({super.key});

  @override
  State<onebord> createState() => _onebordState();
}

class _onebordState extends State<onebord> {
  int currentpage = 0;

  final controller = LiquidController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: [
              Container(
                padding: const EdgeInsets.all(30.0),
                color: Color(0xffbd6ecb),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image:
                          AssetImage("assets/image/onbord_screens/purpal.png"),
                      height: size.height * 0.4,
                    ),
                    Column(
                      children: [
                        Text(
                          "Learn your next Language",
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Lexilearn is app for learn new language and make you one step hade in life",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 17.0),
                        ),
                      ],
                    ),
                    Text(
                      "1/3",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 70.0,
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(30.0),
                color: Color(0xffa0bdff),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: AssetImage("assets/image/onbord_screens/blue.png"),
                      height: size.height * 0.4,
                    ),
                    Column(
                      children: [
                        Text(
                          "Personal Guidance ",
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "we are hear to gide your evary steps ",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 17.0),
                        ),
                      ],
                    ),
                    Text(
                      "2/3",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 70.0,
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(30.0),
                color: Color(0xffdef7e5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: AssetImage(
                          "assets/image/onbord_screens/light_green.png"),
                      height: size.height * 0.4,
                    ),
                    Column(
                      children: [
                        Text(
                          "Enjoy every moument  ",
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Lerning will be easy when you Enjoy to learning metheds",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 17.0),
                        ),
                      ],
                    ),
                    Text(
                      "3/3",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      child: ElevatedButton(

                        onPressed: () {
                          Navigator.pushReplacement(this.context,MaterialPageRoute(builder: (context)=>welcome()));
                        },
                        child: Text("Get Started",style: TextStyle(fontSize: 21.0,color: Colors.white,fontWeight: FontWeight.w600),),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(20.0), backgroundColor: Colors.black,
                          fixedSize: Size(250, 60),
                          textStyle: TextStyle(fontSize: 20.0,color: Colors.white)
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 90.0,
                    )
                  ],
                ),
              ),
            ],
            onPageChangeCallback: onpagechangecallback,
            liquidController: controller,
            slideIconWidget: Icon(Icons.arrow_back_ios_new),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: () {
                int nextpage =controller.currentPage+1;
                controller.animateToPage(page: nextpage);
              },
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, side: const BorderSide(color: Colors.black12),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20.0)),
              child: Container(
                padding: const EdgeInsets.all(14.0),
                decoration: const BoxDecoration(
                    color: Colors.black, shape: BoxShape.circle),
                child: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
            top: 40,
            right: 20,
            child: TextButton(
              onPressed: () =>controller.jumpToPage(page: 2),
              child: const Text(
                "Skip",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 18.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20.0,
            child: AnimatedSmoothIndicator(
              count: 3,
              activeIndex: controller.currentPage,
              effect: const WormEffect(
                activeDotColor: Colors.black,
                dotHeight: 5.0,
              ),
            ),
          )
        ],
      ),
    );
  }

  void onpagechangecallback(int activePageIndex) {
    setState(() {
      currentpage=activePageIndex;
    });

  }
}
