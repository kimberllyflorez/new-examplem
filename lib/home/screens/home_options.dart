import 'package:example_whit_github/theme/custom_colors.dart';
import 'package:example_whit_github/widgets/text_fields/custom_card_field.dart';
import 'package:flutter/material.dart';

class HomeOptions extends StatelessWidget {
  const HomeOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primaryColor.withOpacity(0.2),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: [
          CustomCard(
            imagePageCardUrl: "https://w7.pngwing.com/pngs/369"
                "/532/png-transparent-harry-potter-fan-art-the-wizard-owl-"
                "harry-potter-portrait-mag-character-cartoon.png",
            valueItem:  '4,2',
            textTitle: 'harry potter',
            textDuration: '2 hours',
            textTicket: 'New',
          ),
          CustomCard(
            imagePageCardUrl: "https://w7.pngwing.com/pngs/369"
                "/532/png-transparent-harry-potter-fan-art-the-wizard-owl-"
                "harry-potter-portrait-mag-character-cartoon.png",
            valueItem: '10',
            textTitle: 'harry potter',
            textDuration: '2 hours',
            textTicket: 'New',
          ),
          CustomCard(
            imagePageCardUrl: "https://w7.pngwing.com/pngs/369"
                "/532/png-transparent-harry-potter-fan-art-the-wizard-owl-"
                "harry-potter-portrait-mag-character-cartoon.png",
            valueItem: '10',
            textTitle: 'harry potter',
            textDuration: '2 hours',
            textTicket: 'New',
          ),
          CustomCard(
            imagePageCardUrl: "https://w7.pngwing.com/pngs/369"
                "/532/png-transparent-harry-potter-fan-art-the-wizard-owl-"
                "harry-potter-portrait-mag-character-cartoon.png",
            valueItem: '10',
            textTitle: 'harry potter',
            textDuration: '2 hours',
            textTicket: 'New',
          ),
        ],
      ),
    );
  }
}
