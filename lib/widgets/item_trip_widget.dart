
import 'package:flutter/material.dart';
import 'package:flutter_cubit/core/constant/dimension_constant.dart';
import 'package:flutter_cubit/core/helper/image_helper.dart';
import 'package:flutter_cubit/pages/detail_page.dart';
import 'package:flutter_cubit/widgets/app_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'item_button_widget.dart';

class ItemTrip extends StatelessWidget {
  const ItemTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(kDefaultPadding)),
        color: Colors.grey.withOpacity(0.05),
      ),
      margin: const EdgeInsets.only(bottom: kDefaultPadding*1.5),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: 190,
            child: ImageHelper.loadFromAsset("assets/images/welcome-1.jpg",
                fit: BoxFit.cover,radius: BorderRadius.only(topLeft: Radius.circular(kDefaultPadding), topRight: Radius.circular(kDefaultPadding))),
            
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
                vertical: kDefaultPadding
              ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(text: "Tam Dao",fontWeight: FontWeight.bold, size: 25,),
                const SizedBox(height: kMinPadding,),
                 Row(
                  children: [
                    Icon(FontAwesomeIcons.locationDot, color: Colors.orange, size: 16),
                    const SizedBox(width: kMinPadding,),
                    AppText(text: "Vinh Phuc, Ha Noi", color: Colors.black.withOpacity(0.6),),
                  ],
                ),
                const SizedBox(height: kMinPadding,),
                Row(
                  children: [
                    Icon(FontAwesomeIcons.star, color: Colors.orange, size: 16,),
                    const SizedBox(width: kMinPadding,),
                    AppText(text: "4"),
                    const SizedBox(width: kMinPadding,),
                    AppText(text: "(456 reviews)", color: Colors.grey,),
                  ],
                ),
                Row(
                  children: [
                    AppText(text: "\$120",fontWeight: FontWeight.bold,size: 25,),
                    Spacer(),
                    ItemButtonWidget(
                      data: "See Detail",
                      width: 100,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const DetailPage())
                        );
                      },
                    ),
                  ],
                )
              ],
            )
          )
        ],
      ),
    );
  }
}
