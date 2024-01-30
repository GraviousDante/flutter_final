import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_cubit/pages/search_result_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../core/constant/dimension_constant.dart';
import '../core/extention/text_style_ext.dart';
import '../core/helper/image_helper.dart';
import '../widgets/app_bar_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageNewState();
}

class _HomePageNewState extends State<HomePage> {
  List<String> _destinations = ["Thanh Hoa", "Hải Phòng","Nam Định", "Ha Noi", "Sai Gon","Moc Chau"];
  bool isReload = true;

  Widget _buidlImageHomScreen(String name, String image, double stars) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => SearchResultPage()));
      },
      child: Container(
        // padding: const EdgeInsets.all(2),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            ImageHelper.loadFromAsset(
              image,
              width: double.maxFinite,
              height: 200,
              fit: BoxFit.cover,
              radius: BorderRadius.circular(kItemPadding),
            ),
            const Padding(
              padding: EdgeInsets.all(kDefaultPadding),
              child: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
            Positioned(
              left: kDefaultPadding,
              bottom: kDefaultPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyles.defaultStyle.whiteTextColor.bold,
                  ),
                  const SizedBox(
                    height: kItemPadding,
                  ),
                  Container(
                    padding: const EdgeInsets.all(kMinPadding),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kMinPadding),
                      color: Colors.white.withOpacity(0.4),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Color(0xffFFC107),
                        ),
                        const SizedBox(
                          width: kItemPadding,
                        ),
                        Text('$stars')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // @override
  // void dispose() {
  //   _debounce?.cancel();
  //   super.dispose();
  // }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
            body: AppBarContainer(
              titleString: 'home',
              title: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kItemPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hi Guy!', style: TextStyles.defaultStyle.fontHeader.whiteTextColor.bold),
                        const SizedBox(
                          height: kMediumPadding,
                        ),
                        Text(
                          'Where are you going next?',
                          style: TextStyles.defaultStyle.fontCaption.whiteTextColor,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              implementLeading: false,
              child: Column(
                children: [
                  TextField(
                    enabled: true,
                    autocorrect: false,
                    decoration: const InputDecoration(
                      hintText: 'Search your destination',
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
                    onChanged: (value) {
                    },
                    onTapOutside: (event){
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    onSubmitted: (String submitValue) {},
                  ),
                  const SizedBox(
                    height: kDefaultPadding,
                  ),
                  const SizedBox(
                    height: kMediumPadding,
                  ),
                  Row(
                    children: [

                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Popular Destinations',
                        style: TextStyles.defaultStyle.bold,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: kMediumPadding,
                  ),
                  Expanded(
                    child: CustomScrollView(
                      primary: false,
                      slivers: <Widget>[
                        SliverPadding(
                          padding: const EdgeInsets.all(0),
                          sliver: SliverGrid.count(
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            crossAxisCount: 2,
                            children: _destinations
                                .map((d) => _buidlImageHomScreen(d, "assets/images/welcome-1.jpg",5),
                            ).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }
}
