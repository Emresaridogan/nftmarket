import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: Row(
                children: [
                  const Spacer(
                    flex: 1,
                  ),
                  Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.wallet_giftcard,
                        size: MediaQuery.of(context).size.width * 0.2,
                        color: Colors.blue[800],
                      )),
                  Expanded(
                    flex: 2,
                    child: AutoSizeText(
                      "Ossea",
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            CircularProgressIndicator(
              backgroundColor: Colors.blue[800],
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
