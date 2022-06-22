
import 'package:flutter/material.dart';
import 'package:foodpedia/utils/colors.dart';

class CardWidget extends StatelessWidget {
  final String? txt;
  final String? imagePath;
  final Color? cardColor;
  const CardWidget({
    Key? key, required this.txt, this.imagePath,this.cardColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Card(
        color: cardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        // elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: Image.asset(imagePath!),),
              Center(child: Text(txt!,
                style: const TextStyle(fontSize:18,color: UiColors.cardTitleClr),),)
            ],
          ),
        ),
      ),
    );
  }
}
