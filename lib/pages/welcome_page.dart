import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/core/constant/dimension_constant.dart';
import 'package:flutter_cubit/widgets/app_text.dart';
import 'package:flutter_cubit/widgets/button_widget.dart';

import '../core/constant/color_palatte.dart';
import 'main_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List<String> images = ["welcome-1.jpg","welcome-2.jpg","welcome-3.jpg"];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
          child:Scaffold(
            body: PageView.builder(
                scrollDirection: Axis.vertical,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Container(
                    //set full screen
                    width: double.maxFinite,
                    height: double.maxFinite,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/"+images[index]
                            ),
                            fit: BoxFit.cover
                        )
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 100, left: kDefaultPadding, right: kDefaultPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(text: "Du lịch", size: 30, fontWeight: FontWeight.bold, color: Colors.white,),
                              AppText(text: "Việt Nam", size: 30, color: Colors.white,),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 300,
                                child:AppText(text: "Việt Nam với rất nhiều thành phố, hãy bấm nút mũi tên để xem thêm thông tin", size: 16, color: Colors.white.withOpacity(1),),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const MainPage()),
                                  );
                                },
                                child: ButtonNext(width: 100,),
                              )
                            ],
                          ),
                          Column(
                            children: List.generate(3, (indexDots) {
                              return Container(
                                margin: const EdgeInsets.only(bottom: 2),
                                width: 8,
                                height: index == indexDots ? 25 : 12,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: index == indexDots ? ColorPalette.primaryColor : ColorPalette.primaryColor.withOpacity(0.5)
                                ),
                              );
                            }),
                          )
                        ],
                      ),
                    ),
                  );
                }
            ),
          )
      ),
    );
  }
}
