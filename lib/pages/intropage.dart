import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ullu/bottomWidget/roundButton.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                
                Lottie.asset("assets/heart.json"),
                 const SizedBox(
                    height: 8,
                  ),
                 const Text(
                    "ITS APP FOR YOUR HEALTH",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Expanded(
                child: Column(
              children: [
                RoundButton(
                  textStyle:
                      const TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.white),
                  image: Image.asset("assets/gmail.png",height: 36,width: 36,),
                  btnName: "Login With Email",
                  bgColors: Colors.purple,
                  callback: () {},
                ),
                const SizedBox(
                  height: 8,
                ),
                RoundButton(
                  textStyle:
                      const TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.white),
                      image: Image.asset("assets/google.png",height: 36,width: 36,),
                  
                  btnName: "Login With Email",
                  bgColors: Colors.purple,
                  callback: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                    text: TextSpan(
                        text: "Dont'Have Account?",
                        style: const TextStyle(color: Colors.black, fontSize: 18),
                        children: <TextSpan>[
                      TextSpan(
                          text: "  Sign Up",
                          style:
                              const TextStyle(color: Colors.purple, fontSize: 18),
                          recognizer: TapGestureRecognizer()..onTap = () {})
                    ]))
              ],
            )),
          )
        ],
      ),
    ));
  }
}
