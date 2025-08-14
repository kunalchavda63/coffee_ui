import 'package:coffe_ui/core/services/navigation/router.dart';
import 'package:coffe_ui/core/services/repositories/service_locator.dart';

import '../../../../app_ui.dart';

class AppBarBackButton extends StatelessWidget {
  const AppBarBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomWidgets.customCircleSvgIcon(
      onTap: (){
        getIt<AppRouter>().pop();
      },
        path: AssetIcons.icBack,
        bgColor: AppColors.hexEcf0,
        iconColor: AppColors.hex181C,
        padding: EdgeInsets.all(10.r)
    ).padLeft(24.r);
  }
}
