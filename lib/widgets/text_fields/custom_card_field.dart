import 'package:example_whit_github/theme/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String textTitle;
  final String textDuration;
  final String? textTicket;
  final String imagePageCardUrl;
  final String valueItem;

  const CustomCard({
    Key? key,
    required this.textTitle,
    required this.textDuration,
    required this.imagePageCardUrl,
    this.textTicket,
    required this.valueItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _body();
  }

  Widget _body() {
    return Card(
      clipBehavior: Clip.antiAlias,
      shadowColor: CustomColors.primaryColor.withOpacity(0.8),
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          if (textTicket != null)
            Align(
              alignment: Alignment.topRight,
              child: ItemBadge(textTicket: textTicket),
            ),
          Row(
            children: [
              Image.network(
                imagePageCardUrl,
                fit: BoxFit.fill,
                scale: 5.5,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textTitle,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        textDuration,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14.0,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Row(
                            children: const [
                              Icon(Icons.star_border_sharp, size: 15),
                              Icon(Icons.star_border_sharp, size: 15),
                              Icon(Icons.star_border_sharp, size: 15),
                              Icon(Icons.star_border_sharp, size: 15),
                              Icon(Icons.star_border_sharp, size: 15),
                            ],
                          ),
                          const SizedBox(width: 8),
                          Text(
                            valueItem,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ItemBadge extends StatelessWidget {
  const ItemBadge({
    Key? key,
    required this.textTicket,
  }) : super(key: key);

  final String? textTicket;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: const BoxDecoration(
        color: CustomColors.primaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
      child: Text(
        textTicket!,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
