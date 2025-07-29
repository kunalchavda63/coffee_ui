import 'package:coffe_ui/core/app_ui/app_ui.dart';

class CustomButton extends StatelessWidget {
  final String? label;
  final VoidCallback? onTap;
  final Widget? icon;


  const CustomButton({super.key, this.label, this.onTap, this.icon});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomWidgets.customContainer(
      onTap: onTap,
      h: 62.r,
      w: size.width,
      color: AppColors.hexFf76,
      // border: Border.all(color: AppColors.white),
      alignment: Alignment.center,
      borderRadius: BorderRadius.circular(15),
      clip: Clip.hardEdge,
      // Ensure children are clipped within borderRadius
      child: Align(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomWidgets.customText(
              data: label ?? 'Lo',
              style: BaseStyle.s14w500
                  .w(400)
              .family(FontFamily.sen)
              .w(700)
                  .c(AppColors.white
              )
                  .family(FontFamily.sen),
            ),
            ?icon

          ],
        ),
      ),
    );
  }
}
