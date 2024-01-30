import 'package:flutter/material.dart';
import 'package:flutter_cubit/pages/search_result_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../core/constant/dimension_constant.dart';
import '../core/extention/text_style_ext.dart';
import '../core/helper/image_helper.dart';
import '../widgets/app_bar_container.dart';
import '../widgets/item_trip_widget.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key, this.titleString, this.implementLeading});
  final String? titleString;
  final bool? implementLeading;
  static const route = "booking_page";

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  final List<Map<String, String>> listImageLeft = [
    {
      'name': 'Korea',
      'image': "assets/images/korea.png",
    },
    {
      'name': 'Dubai',
      'image': "assets/images/dubai.png",
    },
    {
      'name': 'Turkey',
      'image': "assets/images/turkey.png",
    },
    {
      'name': 'Japan',
      'image': "assets/images/japan.png",
    },
    {
      'name': 'Korea',
      'image': "assets/images/korea.png",
    },
    {
      'name': 'Dubai',
      'image': "assets/images/dubai.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          body: AppBarContainer(
            titleString: widget.titleString ?? 'MY BOOKING TRIPS',
            implementLeading: widget.implementLeading ?? false,
            child: Column(
              children: [
                TextField(
                  enabled: true,
                  autocorrect: false,
                  decoration: const InputDecoration(
                    hintText: 'Search your trip',
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        FontAwesomeIcons.magnifyingGlass,
                        color: Colors.black,
                        size: 14,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          kItemPadding,
                        ),
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: kItemPadding),
                  ),
                  style: TextStyles.defaultStyle,
                  onChanged: (value) {},
                  onSubmitted: (String submitValue) {},
                ),
                const SizedBox(
                  height: kDefaultPadding,
                ),
                const Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ItemTrip(),
                        ItemTrip(),
                        ItemTrip(),
                        ItemTrip(),
                        ItemTrip(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
