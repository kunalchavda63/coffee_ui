import 'package:coffe_ui/core/app_ui/app_ui.dart';
import 'package:coffe_ui/core/services/navigation/router.dart';
import 'package:coffe_ui/core/services/repositories/service_locator.dart';
import 'package:coffe_ui/core/utilities/utils.dart';
import 'package:coffe_ui/features/screens/food_screen.dart';
import 'package:flutter_svg/svg.dart';


class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  final List<String> recentKeyword = [
    AppStrings.burger,
    'Sandwich',
    AppStrings.pizza
  ];

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomWidgets.customTextField(
              onChanged: (value){
                setState(() {
        
                });
              },
              controller: _searchController,
              style: BaseStyle.s14w500.c(AppColors.hex181C).letter(-0.33.r).w(400),
              padding: EdgeInsets.symmetric(vertical: 24.r),
                prefixIcon: SvgPicture.asset(AssetIcons.icSearch).padLeft(20.r).padRight(12.r),
              suffixIcon: _searchController.text.isNotEmpty?
              CustomWidgets.customAnimationWrapper(
                duration: Duration(milliseconds: 500),
                curve: Curves.decelerate,
                animationType: AnimationTypes.fade,
                child: CustomWidgets.customCircleSvgIcon(
                  onTap: (){
                    setState(() {
                      _searchController.clear();
                    });
                  },
                  h: 20.r,
                  w: 20.r,
                  bgColor: AppColors.hexCdcd,
                  path: AssetIcons.icCross,
                  iconColor: AppColors.white,
                ).padH(12.r),
              ):SizedBox(),
              fillColor: AppColors.hexF6f6,
              filled: true,
              border: OutlinedInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide(color: AppColors.transparent),
        
              )
            ).padH(24.r).padBottom(24.r),
            CustomWidgets.customText(
              data: AppStrings.recentKeyword,
              style: BaseStyle.s20w400.c(AppColors.hex3234)
            ).padH(24.r).padBottom(12.r),
            SizedBox(
              height: 46.r,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: recentKeyword.length,
                  itemBuilder: (context,index){
                    return CustomWidgets.customContainer(
                      onTap: (){
                        logger.i('Pushing : ${getIt<AppRouter>().navigatorKey.currentWidget}');
                        getIt<AppRouter>().push(FoodScreen());
                      },
                      h: 46.r,
                      borderRadius: BorderRadius.circular(33.r),
                      padding: EdgeInsets.symmetric(horizontal: 20.r),
                      alignment: Alignment.center,
                      border:Border.all(color: AppColors.hexEded,width: 2),
                      child: CustomWidgets.customText(
                        data: recentKeyword[index],
                        style: BaseStyle.s16w400.c(AppColors.hex181C)
                      )
                    ).padRight(10.r);
        
                  },
              padding: EdgeInsets.symmetric(horizontal: 24.r),),
            ).padBottom(32.r),
            CustomWidgets.customText(
              data: AppStrings.suggestRestaurants,
              style: BaseStyle.s20w400.c(AppColors.hex3234)
            ).padH(24.r).padBottom(20.r),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),

              shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context,index){
              return CustomWidgets.customContainer(
                h: 64.r,
                border: Border(
                  bottom: BorderSide(color: AppColors.hexEbeb,width: 2)
                ),
                child: Row(
                  children: [
                    CustomWidgets.customContainer(
                      h: 50.r,
                      w: 60.r,
                      color: AppColors.hex98a8,
                      borderRadius: BorderRadius.circular(8.r)
                    ).padRight(9.r).padBottom(14.r),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomWidgets.customText(
                          data: 'Panis Restaturant',
                          style: BaseStyle.s16w400.c(AppColors.hex3234)
                        ).padBottom(8.r),
                        Row(
        
                          children: [
                            SvgPicture.asset(AssetIcons.icStart,height: 15.r,width: 15.r,fit: BoxFit.contain,).padRight(2.r),
                            CustomWidgets.customText(
                              data: '4.7',
                              style: BaseStyle.s16w400.c(AppColors.hex181C)
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )
              ).padBottom(14.r);
            }).padH(24.r).padBottom(32.r),
            CustomWidgets.customText(
                data: AppStrings.popularFastFood,
                style: BaseStyle.s20w400.c(AppColors.hex3234)
            ).padH(24.r).padBottom(20.r),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 8.r,
                crossAxisSpacing: 8.r,
                crossAxisCount: 2), itemBuilder:(context,index){
              return CustomWidgets.customContainer(
                h: 144.r,
                w: MediaQuery.of(context).size.width/2,
                color: AppColors.white,
                borderRadius: BorderRadius.circular(24.r),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.white,
                    offset: Offset(12,12),
                    blurRadius: 30.r,
                    spreadRadius: 0.r
                  ),

                  BoxShadow(
                      color: AppColors.hex969615,
                      offset: Offset(12,12),
                      blurRadius: 30.r,
                      spreadRadius: 0.r
                  )
                ],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomWidgets.customContainer(
                      h: 84.r,
                      color: AppColors.hex98a8,
                      borderRadius: BorderRadius.circular(15.r)
                    ).padH(17.r).padBottom(6.r),
                    CustomWidgets.customText(
                      data: 'Buffalo Pizza',
                      style: BaseStyle.s15w700.c(AppColors.hex3234),

                    ).padH(17.r),
                  CustomWidgets.customText(
                    data: 'Club',
                    style: TextStyle().s(13.sp).family(FontFamily.sen).c(AppColors.hex6469)
                  ).padH(17.r)
                  ],
                )



              );
            },
              itemCount: 4,
            ).padH(24.r)
            
        
            
            
          ],
        ),
      ),

    );
  }
}

class SuggestedRestaurantModel{
  final String? imagePath;
  final String? name;
  final double? rating;
  SuggestedRestaurantModel({this.imagePath, this.name, this.rating,});


}