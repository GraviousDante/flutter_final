import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../core/constant/dimension_constant.dart';
import '../widgets/app_text.dart';
import '../widgets/button_custom.dart';
import '../widgets/item_button_widget.dart';
import 'check_out_screen.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});
  @override
  State<DetailPage> createState() => _TestPageState();
}

class _TestPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
            body: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 220,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/welcome-1.jpg"),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                Positioned(
                  // margin: const EdgeInsets.only(top: 20, left: 20),
                  top: 20,
                  left: 20,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          kDefaultPadding,
                        ),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(kItemPadding),
                      child: const Icon(
                        FontAwesomeIcons.arrowLeft,
                        size: kDefaultPadding,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 180,
                    child: Row(
                      children: [
                        Container(
                          // margin: const EdgeInsets.only(top: 180),
                            padding: const EdgeInsets.only(left: kDefaultPadding * 1.5, right: kDefaultPadding * 1.5),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height-180,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(kDefaultPadding * 3), topLeft: Radius.circular(kDefaultPadding * 3)),
                                color: Colors.white
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: kDefaultPadding * 2,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      AppText(text: "Chua Thay", fontWeight: FontWeight.bold, size: 25,),
                                      AppText(text: "\$123",size: 20, color: Colors.blue,)
                                    ],
                                  ),
                                  const SizedBox(height: 6,),
                                  Row(
                                    children: [
                                      const Icon(FontAwesomeIcons.locationDot, size: 15, color: Colors.grey,),
                                      const SizedBox(width: 6,),
                                      AppText(text: "Ha noi",color: Colors.grey,)
                                    ],
                                  ),
                                  const SizedBox(height: 6,),
                                  Row(
                                    children: [
                                      Wrap(
                                        children: List.generate(5, (index){
                                          return Icon(Icons.star,color: (index < 3) ? Colors.orange : Colors.grey,);
                                        }),
                                      ),
                                      const SizedBox(width: 6,),
                                      AppText(text: "(3})", color: Colors.grey,)
                                    ],
                                  ),
                                  const SizedBox(height: 20,),
                                  AppText(text: "Description", fontWeight: FontWeight.bold,size: 25,),
                                  const SizedBox(height: 10,),
                                  AppText(
                                    text: "Chủ trì phiên họp Chính phủ thường kỳ sáng 9/9, Thủ tướng Phạm Minh Chính đồng thời yêu cầu Bộ Nội vụ sớm hoàn thiện"
                                        " và báo cáo Chính phủ phương án trình Bộ Chính trị, Trung ương, Quốc hội về lộ trình cải cách tiền lương.Chủ trì phiên"
                                        " họp Chính phủ thường kỳ sáng 9/9, Thủ tướng Phạm Minh Chính đồng thời yêu cầu Bộ Nội vụ sớm hoàn thiện và báo cáo Chính"
                                        " phủ phương án trình Bộ Chính trị, Trung ương, Quốc hội về lộ trình cải cách tiền lương.Chủ trì phiên họp Chính phủ thường "
                                        "kỳ sáng 9/9, Thủ tướng Phạm Minh Chính đồng thời yêu cầu Bộ Nội vụ sớm hoàn thiện và báo cáo Chính phủ phương án trình Bộ"
                                        " Chính trị, Trung ương, Quốc hội về lộ trình cải cách tiền lương.Chủ trì phiên họp Chính phủ thường kỳ sáng 9/9,"
                                        " Thủ tướng Phạm Minh Chính đồng thời yêu cầu Bộ Nội vụ sớm hoàn thiện và báo cáo Chính phủ phương án trình Bộ Chính trị, "
                                        "Trung ương, Quốc hội về lộ trình cải cách tiền lương.Chủ trì phiên họp Chính phủ thường kỳ sáng 9/9, Thủ tướng Phạm Minh"
                                        " Chính đồng thời yêu cầu Bộ Nội vụ sớm hoàn thiện và báo cáo Chính phủ phương án trình Bộ Chính trị, Trung ương, Quốc hội "
                                        "về lộ trình cải cách tiền lương.Chủ trì phiên họp Chính phủ thường kỳ sáng 9/9, Thủ tướng Phạm Minh Chính đồng thời yêu"
                                        " cầu Bộ Nội vụ sớm hoàn thiện và báo cáo Chính phủ phương án trình Bộ Chính trị, Trung ương, Quốc hội về lộ trình cải"
                                        " cách tiền lương.Chủ trì phiên họp Chính phủ thường kỳ sáng 9/9, Thủ tướng Phạm Minh Chính đồng thời yêu cầu Bộ Nội"
                                        " vụ sớm hoàn thiện và báo cáo Chính phủ phương án trình Bộ Chính trị, Trung ương, Quốc hội về lộ trình cải cách tiề"
                                        "n lương.Chủ trì phiên họp Chính phủ thường kỳ sáng 9/9, Thủ tướng Phạm Minh Chính đồng thời yêu cầu Bộ Nội vụ sớm",
                                    color: Colors.grey,size: 16,
                                  ),
                                ],
                              ),
                            )
                        ),
                      ],
                    )
                ),
                Positioned(
                  bottom: 2,
                  child: Container(
                    // margin: const EdgeInsets.only(top: 180),
                    padding: const EdgeInsets.only(left: kDefaultPadding * 1.5, right: kDefaultPadding * 1.5),
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    height: 50,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {

                            });
                          },
                          child: ButtonCustom(
                            isIcon: true,
                            height: 50,
                            icon: const Icon(
                              FontAwesomeIcons.solidHeart,color: Colors.red,
                            ),
                            backgroundColor: Colors.transparent,
                            borderColor: Colors.grey,
                          ),
                        ),
                        Spacer(),
                        ItemButtonWidget(
                          data: "Book trip now",
                          width: 270,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const CheckOutPage())
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}
