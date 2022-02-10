import 'package:example_whit_github/theme/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String TextTitle;
  final String TextDuration;
  final String? TextTiquet;
  final String imagePageCardUrl;
  final String valueItem;

  const CustomCard(
      {Key? key,
      required this.TextTitle,
      required this.TextDuration,
      required this.imagePageCardUrl,
      this.TextTiquet,
      required this.valueItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shadowColor: CustomColors.primaryColor.withOpacity(0.5),
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            imagePageCardUrl,
            fit: BoxFit.fill,
            scale: 5.5,
          ),
          //SizedBox(width: 0),
          Container(
            padding: EdgeInsets.symmetric(vertical: 30),
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(TextTitle),
                Text(TextDuration),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Row(
                        children: const [
                          Icon(Icons.star_border_sharp, size: 15),
                          Icon(Icons.star_border_sharp, size: 15),
                          Icon(Icons.star_border_sharp, size: 15),
                          Icon(Icons.star_border_sharp, size: 15),
                          Icon(Icons.star_border_sharp, size: 15),
                        ],
                      ),
                    ),
                    Text(valueItem),
                  ],
                ),
              ],
            ),
          ),
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
              Text('data')
            ],
          )
        ],
      ),
    );
  }
}
