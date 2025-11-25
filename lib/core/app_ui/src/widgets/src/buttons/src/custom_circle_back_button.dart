import 'package:coffe_ui/core/app_ui/app_ui.dart';
import 'package:coffe_ui/core/services/navigation/router.dart';
import 'package:coffe_ui/core/services/repositories/service_locator.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCircleBackButton extends StatelessWidget {
  const CustomCircleBackButton({super.key, this.color});
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return CustomWidgets.customContainer(
      h: 32.r,
      w: 32.r,
      onTap: () {
        getIt<AppRouter>().pop<dynamic>();
      },
      // border: Border.all(color: color??AppColors.hex2824),
      padding: const EdgeInsets.all(8),
      color: color?.withAlpha(15)??AppColors.transparent,
      boxShape: BoxShape.circle,
      child: SvgPicture.asset(
        AssetIcons.icBack,
        // colorFilter: ColorFilter.mode(color??AppColors.hex2824, BlendMode.srcIn),
        height: 32.r,
        width: 32.r,
      ),
    );
  }
}
