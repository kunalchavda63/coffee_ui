import 'package:coffe_ui/core/app_ui/app_ui.dart';
import 'package:coffe_ui/core/app_ui/src/widgets/src/custom_circle_svg_icon.dart';
import 'package:coffe_ui/core/utilities/src/strings.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/app_ui/src/widgets/src/food_widget/back_button.dart';
import '../../core/app_ui/src/widgets/src/food_widget/food_item_card.dart';

class RestaturantView extends StatefulWidget {
  const RestaturantView({super.key});

  @override
  State<RestaturantView> createState() => _RestaturantViewState();
}

class _RestaturantViewState extends State<RestaturantView> {
  late Size size;

  final List<String> list = [
    AppStrings.delivery,
    AppStrings.pickUp,
    AppStrings.offers,
    AppStrings.onlinePaymentAvailable
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    size = MediaQuery.of(context).size;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomWidgets.customAppBar(
        bgColor: AppColors.white,
        leading: AppBarBackButton(),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomWidgets.customText(
              data: AppStrings.restaurantView,
              style: BaseStyle.s17w400.c(AppColors.hex181C).line(22.r)
            ),
            CustomCircleSvgIcon(
              onTap: (){
                showDialog(

                    context: context, builder: (BuildContext context) {

                      return Dialog(

                        insetPadding: EdgeInsets.symmetric(horizontal: 20.r,vertical: 20),
                        backgroundColor: AppColors.white,
                        child: CustomWidgets.customContainer(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(12.r),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomWidgets.customText(
                                      data: AppStrings.filterUSearch,
                                      style: BaseStyle.s17w400.c(AppColors.hex181C).line(2.2.r)
                                  ),
                                  CustomWidgets.customCircleSvgIcon(
                                    path: AssetIcons.icCross,
                                    iconColor: AppColors.hex6469,
                                    bgColor: AppColors.hexEcf0,
                                    padding: EdgeInsets.all(16.r),
                                  ).padRight(20.r),
                                ],
                              ).padBottom(19.r),
                              CustomWidgets.customText(
                                data: AppStrings.offers.toUpperCase(),
                                style: BaseStyle.s11w700.c(AppColors.hex3234)
                              ).padBottom(13.01.r),
                              Wrap(
                                alignment: WrapAlignment.start,
                                children: list.map((e)  {
                                  return
                                    CustomWidgets.customContainer(
                                      padding: EdgeInsets.symmetric(horizontal: 17.r,vertical: 13.r),
                                      child: CustomWidgets.customText(
                                          data: e,
                                          style: BaseStyle.s16w400.c(AppColors.hex6469).letter(-0.58)
                                      ),
                                      border: Border.all(color: AppColors.hexEded,width: 2),
                                      borderRadius: BorderRadius.circular(33.r),
                                    ).padRight(10.r).padBottom(9.04.r);
                                }).toList()
                              ).padBottom(32.r),
                              CustomWidgets.customText(
                                  data: AppStrings.deliverTime.toUpperCase(),
                                  style: BaseStyle.s11w700.c(AppColors.hex3234)
                              ).padBottom(13.01.r),
                              Row(

                                children: [
                                  CustomWidgets.customContainer(
                                    color: AppColors.hexF58d,
                                    padding: EdgeInsets.symmetric(horizontal: 17.r,vertical: 13.r),
                                    child: CustomWidgets.customText(
                                        data: "10-15 min",
                                        style: BaseStyle.s16w400.c(AppColors.white).letter(-0.58)
                                    ),
                                    border: Border.all(color: AppColors.hexEded,width: 2),
                                    borderRadius: BorderRadius.circular(33.r),

                                  ).padRight(10.r),
                                  CustomWidgets.customContainer(
                                    padding: EdgeInsets.symmetric(horizontal: 17.r,vertical: 13.r),
                                    child: CustomWidgets.customText(
                                        data: "10 min",
                                        style: BaseStyle.s16w400.c(AppColors.hex6469).letter(-0.58)
                                    ),
                                    border: Border.all(color: AppColors.hexEded,width: 2),
                                    borderRadius: BorderRadius.circular(33.r),

                                  ).padRight(10.r),
                                  CustomWidgets.customContainer(
                                    padding: EdgeInsets.symmetric(horizontal: 17.r,vertical: 13.r),
                                    child: CustomWidgets.customText(
                                        data: "10 min",
                                        style: BaseStyle.s16w400.c(AppColors.hex6469).letter(-0.58)
                                    ),
                                    border: Border.all(color: AppColors.hexEded,width: 2),
                                    borderRadius: BorderRadius.circular(33.r),

                                  ).padRight(10.r),

                                ],
                              )


                            ],
                          ).padLeft(20.r).padTop(32.r).padBottom(20.r),
                        ),
                      );
                },

                );

              },
              padding: EdgeInsets.all(15.r),
              path: AssetIcons.icMore,
              bgColor: AppColors.hexEcf0,
            )
          ],
        ),

      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomWidgets.customContainer(
              h: 150.r,
              color: AppColors.hex98a8,
              borderRadius: BorderRadius.circular(32.r),

            ).padH(24.r).padBottom(24.r),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomWidgets.customText(
                  data: 'Spicy ${AppStrings.restaurants}',
                  style: TextStyle().w(700).s(20.sp).c(AppColors.hex181C).family(FontFamily.sen)
                ),
                CustomWidgets.customText(
                  data: 'Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.',
                  style: BaseStyle.s14w500.c(AppColors.hexA0a5).w(400).line(2.4)
                ).padBottom(20.25.r),
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
                ).padBottom(31.5.r),
              ],
            ).padH(24.r),
            SizedBox(
              height: 48.r,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 24.r),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context,index){
                    return CustomWidgets.customContainer(
                        borderRadius: BorderRadius.circular(33.r),
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 10.r,horizontal: 20.r),
                        border: index!=0?Border.all(color:AppColors.hexEded,width: 2.r):null,
                        h: 48.r,
                        color: index==0?AppColors.hexF58d:AppColors.white,
                        child: CustomWidgets.customText(

                            data: AppStrings.burger,
                            style: index==0 ?BaseStyle.s16w400.c(AppColors.white).letter(-0.33) : BaseStyle.s16w400.c(AppColors.hex181C).letter(0.33)                     )
                    ).padRight(10.r);

                  }),
            ).padBottom(32.r),
            CustomWidgets.customText(
              data: "${AppStrings.burger} (10)",
              style: BaseStyle.s20w400.c(AppColors.hex181C)
            ).padH(24.r).padBottom(19.r),
            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.79,
                    crossAxisCount: 2,
                    mainAxisSpacing: 21.r,
                    crossAxisSpacing: 21.r
                ),
                itemCount: 4,

                itemBuilder:(context,index){

                  return FoodItemCard();
                }).padBottom(32.r).padH(24.r),




          ],
        ),
      ),
    );
  }
}
