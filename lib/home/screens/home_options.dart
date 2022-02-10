import 'package:example_whit_github/widgets/text_fields/custom_card_field.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';



class HomeOptions extends StatelessWidget {
  const HomeOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        children: [
          CustomCard(
              ImagenPageCard:
              Image(image: NetworkImage("https://w7.pngwing.com/pngs/369"
               "/532/png-transparent-harry-potter-fan-art-the-wizard-owl-"
               "harry-potter-portrait-mag-character-cartoon.png")),
              valueItem: '10',
              TextTitle: 'harry potter',
              TextDuration: '2 hours',
              TextTiquet: 'New',
          ),
        ],
      ),
    );
  }
}
