import 'package:fitnest_x/config/app_theme.dart';
import 'package:fitnest_x/logic/controller/intro_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);

  var controller = Get.put(IntroController());

  @override
  Widget build(BuildContext context) {
    Widget _buildPage({
      required String title,
      required String desc,
      required String imageUrl,
    }) {
      return Column(
        children: <Widget>[
          Image.asset(imageUrl),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Get.theme.textTheme.headline2?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  desc,
                  style: Get.theme.textTheme.bodyText1?.copyWith(
                    color: AppTheme.grayColor1,
                  ),
                ),
              ],
            ),
          )
        ],
      );
    }

    return Obx(
      () => Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Column(
            children: <Widget>[
              Expanded(
                child: PageView(
                  onPageChanged: ((value) {
                    controller.valuePage.value = value;
                    controller.changePage(value);
                  }),
                  children: [
                    _buildPage(
                        title: "Track Your Goal",
                        desc:
                            "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
                        imageUrl: "assets/images/il_intro_1.png"),
                    _buildPage(
                        title: "Get Burn",
                        desc:
                            "Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
                        imageUrl: "assets/images/il_intro_2.png"),
                    _buildPage(
                        title: "Eat Well",
                        desc:
                            "Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun",
                        imageUrl: "assets/images/il_intro_3.png"),
                    _buildPage(
                        title: "Improve Sleep  Quality",
                        desc:
                            "Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning",
                        imageUrl: "assets/images/il_intro_4.png"),
                  ],
                  controller: controller.pageController.value,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {
                      controller.nextPage();
                    },
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Obx(
                          () => SizedBox(
                            width: 60,
                            height: 60,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              value: controller.valueProgress.value,
                              color: AppTheme.brandColor1,
                            ),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            gradient: AppTheme.brandLinearGradient,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                                "assets/icons/ic_right_arrow.svg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
