import 'package:auto_size_text/auto_size_text.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class OnboardView extends StatelessWidget {
  const OnboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Column(children: [
        Expanded(
            flex: 3,
            child: Placeholder(
              color: Colors.grey.shade300,
              child: Container(
                color: Colors.grey.shade300,
              ),
            )),
        Expanded(
          flex: 2,
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Colors.red,
            ),
            child: Column(
              children: [
                Expanded(
                    flex: 4,
                    child: Center(
                        child: AutoSizeText(
                      "Launch and Grow your great NFT!",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.bold,
                          ),
                    ))),
                Expanded(
                  flex: 2,
                  child: AutoSizeText(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: DotsIndicator(
                    dotsCount: 3,
                    position: 0,
                    decorator: DotsDecorator(
                      activeColor: Colors.blue.shade900,
                      size: const Size.square(9.0),
                      activeSize: const Size(18.0, 9.0),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: TextButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue.shade900)),
                      child: const Text(
                        "Next",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                    )),
                const Spacer(
                  flex: 1,
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
