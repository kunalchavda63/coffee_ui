import 'package:coffe_ui/core/app_ui/app_ui.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utilities/src/strings.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomWidgets.customAppBar(
        bgColor: AppColors.white,
        leading: CustomWidgets.customCircleSvgIcon(
          path: AssetIcons.icMenu,
          bgColor: AppColors.hexEcf0,
          h: 45.r,
          w: 45.r,
        ).padLeft(24.r),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomWidgets.customText(
                  data: 'Search',
                  style: BaseStyle.s17w400.c(AppColors.hex181C),
                ).padRight(9.r),
              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                CustomWidgets.customCircleSvgIcon(
                  h: 45.r,
                  w: 45.r,
                  bgColor: AppColors.black,
                  iconColor: AppColors.white,
                  path: AssetIcons.icCart,
                  padding: EdgeInsets.all(14.r),
                ),
                Positioned(
                  top: -3,
                  right: -2,
                  child: CustomWidgets.customContainer(
                    h: 25.r,
                    w: 25.r,
                    color: AppColors.hexFf76,
                    alignment: Alignment.center,
                    boxShape: BoxShape.circle,
                    child: CustomWidgets.customText(
                      data: '2',

                      style: BaseStyle.s16w500
                          .c(AppColors.white)
                          .family(FontFamily.sen),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ).padRight(24.r),
      ),

    );
  }
}
