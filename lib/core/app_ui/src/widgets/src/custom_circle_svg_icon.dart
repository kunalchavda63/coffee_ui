import 'package:flutter_svg/flutter_svg.dart';

import '../../../app_ui.dart';

class CustomCircleSvgIcon extends StatelessWidget {
  final double? h;
  final double? w;
  final double? iconH;
  final double? iconW;
  final Border? border;
  final Color? bgColor;
  final String? path;
  final Color? iconColor;
  final VoidCallback? onTap;
  final EdgeInsets? padding;

  const CustomCircleSvgIcon({
    super.key,
    this.h,
    this.w,
    this.iconColor,
    this.border,
    this.bgColor,
    this.onTap, this.iconH, this.iconW,this.padding, this.path,
  });

  @override
  Widget build(BuildContext context) {
    return CustomWidgets.customContainer(
      onTap: onTap,
      h: h,
      w: w,
      padding: padding??EdgeInsets.all(8.r),
      boxShape: BoxShape.circle,
      border: border,
      color: bgColor,
      child: SvgPicture.asset(path??AssetIcons.icApple,height: iconH,width: iconW,colorFilter: ColorFilter.mode(iconColor??AppColors.black, BlendMode.srcIn),),
    );
  }
}
