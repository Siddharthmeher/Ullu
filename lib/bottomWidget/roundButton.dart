import 'package:flutter/material.dart';


class RoundButton extends StatelessWidget {
  final String btnName;
  
  final Color? bgColors;
  final TextStyle? textStyle;
  final VoidCallback? callback;
  final Image? image;

  RoundButton({
    required this.btnName,
    
    this.bgColors = const Color.fromARGB(242, 238, 233, 233),
    this.textStyle,
    this.callback,
    this.image,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.00),
      child: SizedBox(
        height: 50,
        
        child: ElevatedButton(
          onPressed: () {
            callback!();
          },
          style: ElevatedButton.styleFrom(
              elevation: 5.00,
              
              backgroundColor: bgColors,
              shadowColor: bgColors,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(21)))),
          child: image != null
              ? Row(
                  children: [
                    image!,
                    const SizedBox(
                     width: 80,
                    ),
                    Text(
                      btnName,
                      style: textStyle,
                    )
                  ],
                )
              : Text(
                  btnName,
                  style: textStyle,
                ),
        ),
      ),
    );
  }
}
