import 'package:coffe_ui/core/app_ui/app_ui.dart';
import 'package:coffe_ui/core/utilities/utils.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddCartScreen extends StatefulWidget {
  const AddCartScreen({super.key});

  @override
  State<AddCartScreen> createState() => _AddCartScreenState();
}

class _AddCartScreenState extends State<AddCartScreen> {

  final List<String> ingridents = [
    AssetIcons.icSalt,
    AssetIcons.icChicken,
    AssetIcons.icOnion,
    AssetIcons.icGarlic
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomWidgets.customAppBar(
        bgColor: AppColors.white,
        isCenterTitle: false,
        leading: CustomWidgets.customCircleSvgIcon(
          path: AssetIcons.icBack,
          bgColor: AppColors.hexEcf0,
          iconColor: AppColors.hex181C,
          padding: EdgeInsets.all(15.r),
        ).padLeft(24.r),
        title: CustomWidgets.customText(
          data: AppStrings.details,
          style: BaseStyle.s17w400.c(AppColors.hex181C),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CustomWidgets.customContainer(
                h: 184.r,
                color: AppColors.hex98a8,
                borderRadius: BorderRadius.circular(32.r),
              ).padTop(32.r).padBottom(24.r),
            ).padH(24.r),
            CustomWidgets.customContainer(
              h: 47.r,
              padding: EdgeInsets.symmetric(horizontal: 20.r, vertical: 13.r),
              borderRadius: BorderRadius.circular(50.r),
              border: Border.all(color: AppColors.hexE9e9),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomWidgets.customImageView(
                    path: AssetImages.imgCoffe,
                  ).padRight(13.r),
                  CustomWidgets.customText(
                    data: 'Uttar Coffe House',
                    style: BaseStyle.s14w500.c(AppColors.hex181C).w(400),
                  ),
                ],
              ),
            ).padBottom(20.r).padH(24.r),
            CustomWidgets.customText(
              data: 'Pizza Calzone European',
              style: TextStyle()
                  .s(20.sp)
                  .w(700)
                  .family(FontFamily.sen)
                  .c(AppColors.hex181C),
            ).padBottom(7.r).padH(24.r),
            CustomWidgets.customText(
              data:
                  'Prosciutto e funghi is a pizza variety that is topped with tomato sauce.',
              style: BaseStyle.s14w500.c(AppColors.hexA0a5).w(400).line(2.4),
            ).padBottom(20.25.r).padH(24.r),
            Row(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      AssetIcons.icStart,
                      height: 20,
                      width: 20,
                      fit: BoxFit.contain,
                    ).padRight(10.r),
                    CustomWidgets.customText(
                      data: '4.7',
                      style: TextStyle()
                          .s(16.sp)
                          .w(700)
                          .family(FontFamily.sen)
                          .c(AppColors.hex181C),
                    ),
                  ],
                ).padRight(36.r),
                Row(
                  children: [
                    SvgPicture.asset(
                      AssetIcons.icTruck,
                      height: 20,
                      width: 20,
                      fit: BoxFit.contain,
                    ).padRight(10.r),
                    CustomWidgets.customText(
                      data: 'Free',
                      style: TextStyle()
                          .s(14.sp)
                          .w(400)
                          .family(FontFamily.sen)
                          .c(AppColors.hex181C),
                    ),
                  ],
                ).padRight(36.r),
                Row(
                  children: [
                    SvgPicture.asset(
                      AssetIcons.icClock,
                      height: 20,
                      width: 20,
                      fit: BoxFit.contain,
                    ).padRight(10.r),
                    CustomWidgets.customText(
                      data: '20 min',
                      style: TextStyle()
                          .s(14.sp)
                          .w(400)
                          .family(FontFamily.sen)
                          .c(AppColors.hex181C),
                    ),
                  ],
                ),
              ],
            ).padBottom(24.75.r).padH(24.r),
            Row(
              children: [
                CustomWidgets.customText(
                  data: '${AppStrings.size.toUpperCase()}:',
                  style: TextStyle()
                      .s(13.sp)
                      .c(AppColors.hex3234)
                      .family(FontFamily.sen)
                      .letter(2),
                ).padRight(17.r),
                SizedBox(
                  height: 48.r,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      // todo add bloc cubit for this select size
        
                      return CustomWidgets.customContainer(
                        alignment: Alignment.center,
                        h: 48.r,
                        w: 48.r,
                        color: AppColors.hexF0f5,
                        boxShape: BoxShape.circle,
                        child: CustomWidgets.customText(
                          data: '10”',
                          style: BaseStyle.s16w400.c(AppColors.hex1212)
                        )
                      ).padRight(10.r);
                    },
                  ),
                ),
              ],
            ).padBottom(18.25.r).padH(24.r),
            CustomWidgets.customText(
              data: AppStrings.ingridents.toUpperCase(),
              style: TextStyle().s(13.sp).c(AppColors.hex3234).letter(2).family(FontFamily.sen)
            ).padBottom(19.29.r).padH(24.r),
            SizedBox(
              height: 50.r,
              child: ListView.builder(
                shrinkWrap: true,
                  itemCount: ingridents.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder:(context,index){
                    return CustomWidgets.customContainer(
                      h: 50.r,
                      w: 50.r,
                      boxShape: BoxShape.circle,
                      padding: EdgeInsets.all(12.r),
                      color:AppColors.hexFfeb ,
                      child: SvgPicture.asset(ingridents[index])
                    ).padRight(19.r);
                  }),
            ).padH(24.r).padBottom(7.r),
            CustomWidgets.customContainer(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.r),
                topRight: Radius.circular(24.r),
              ),
              color: AppColors.hexF0f5,
              child: Column(
                children: [
                  Row(
                    children: [
                      CustomWidgets.customText(
                        data: '\$32',
                        style: BaseStyle.s28w400.c(AppColors.hex181C)
                      ),
                      Spacer(),
                      CustomWidgets.customContainer(
                        h:48.r,
                        color: AppColors.hex1212,
                        borderRadius: BorderRadius.circular(50.r),
                        padding: EdgeInsets.symmetric(horizontal: 14.r,vertical: 12.r),

                        child: Row(
                          children: [
                            CustomWidgets.customCircleSvgIcon(
                              bgColor: AppColors.white20,
                              iconColor: AppColors.white,
                              path: AssetIcons.icMinus,
                            ),
                            CustomWidgets.customText(
                              data: '2',
                              style:BaseStyle.s16w500.c(AppColors.white).w(700)
                            ).padH(20.r),
                            CustomWidgets.customCircleSvgIcon(
                              bgColor: AppColors.white20,
                              iconColor: AppColors.white,
                              path: AssetIcons.icAdd,
                            )
                          ],
                        ),

                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0,12),
                            color: AppColors.black04,
                            blurRadius: 20.r,
                            spreadRadius: 0.r
                          )
                        ]
                      )
                    ],
                  ).padBottom(24.r),
                  CustomWidgets.customButton(
                    label: AppStrings.addToCart.toUpperCase(),
                  )
                ],
              ).padBottom(MediaQuery.of(context).viewInsets.bottom+MediaQuery.of(context).viewPadding.bottom+30.r).padH(24.r).padTop(27.r),
            )
          ],
        ),
      ),
    );
  }
}
