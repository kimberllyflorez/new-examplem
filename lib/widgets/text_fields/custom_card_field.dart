import 'package:example_whit_github/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String TextTitle;
  final String TextDuration;
  final String? TextTiquet;
  final Image ImagenPageCard;
  final String valueItem;

  const CustomCard({
    Key? key,
    required this.TextTitle,
    required this.TextDuration,
    required this.ImagenPageCard,
    this.TextTiquet,
    required this.valueItem
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(

      child: Row(
        children: [
          Container(
            width: 160,
            height: 150,
            child: Container(
              child: ImagenPageCard,
            ),
          ),
          SizedBox(width: 15),
          Container(
            width: 100,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(TextTitle),
                Text(TextDuration),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star_border_sharp),
                    Text(valueItem),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (TextTiquet != null)
                Container(

                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: const BoxDecoration(
                    color: CustomColors.primaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    TextTiquet!,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              SizedBox(height: 50),
              Text('data')
            ],
          )
        ],
      ),
    );
  }
}
