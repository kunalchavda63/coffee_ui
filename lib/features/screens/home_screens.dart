import 'package:coffe_ui/core/app_ui/app_ui.dart';
import 'package:coffe_ui/core/utilities/src/strings.dart';
import 'package:coffe_ui/features/screens/bloc/select_categories_bloc.dart';
import 'package:coffe_ui/features/screens/bloc/select_categories_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/utilities/src/extensions/logger/logger.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  final List<CategoriesModel> categories = [
    CategoriesModel(title: AppStrings.all),
    CategoriesModel(title: AppStrings.hotDog),
    CategoriesModel(title: AppStrings.burger),
    CategoriesModel(title: AppStrings.pizza),
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
                  data: AppStrings.deliverTo.toUpperCase(),
                  style: TextStyle()
                      .s(12.sp)
                      .w(700)
                      .c(AppColors.hexFc6e)
                      .family(FontFamily.sen),
                ),
                Row(
                  children: [
                    CustomWidgets.customText(
                      data: 'Halal lab office',
                      style: TextStyle()
                          .s(14.sp)
                          .w(400)
                          .c(AppColors.hex6767)
                          .family(FontFamily.sen),
                    ).padRight(9.r),
                    SvgPicture.asset(AssetIcons.icBottomTriangle),
                  ],
                ),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              CustomWidgets.customText(
                data: "${AppStrings.hey} Halal,",
                style: TextStyle()
                    .s(16.sp)
                    .c(AppColors.hex1e1d)
                    .family(FontFamily.sen),
              ).padRight(4.r),
              CustomWidgets.customText(
                data: AppStrings.goodAfternoon,
                style: TextStyle()
                    .s(16.sp)
                    .c(AppColors.hex1e1d)
                    .family(FontFamily.sen)
                    .w(700),
              ),
            ],
          ).padBottom(16.r).padH(24.r),
          CustomWidgets.customTextField(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: AppColors.transparent),
            ),
            filled: true,
            padding: EdgeInsets.symmetric(horizontal: 20.r, vertical: 24.r),
            fillColor: AppColors.hexF6f6,
            prefixIcon: SvgPicture.asset(
              AssetIcons.icSearch,
            ).padLeft(20.r).padRight(12.r),
            hintText:
                "${AppStrings.search} ${AppStrings.dishes.toLowerCase()}, ${AppStrings.restaurants.toLowerCase()}",
            hintStyle: BaseStyle.s14w500
                .c(AppColors.hex6767)
                .family(FontFamily.sen)
                .w(400),
          ).padBottom(32.r).padH(24.r),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomWidgets.customText(
                data: AppStrings.allCategories,
                style: BaseStyle.s20w400.c(AppColors.hex3234),
              ),
              Row(
                children: [
                  CustomWidgets.customText(
                    data: AppStrings.seeAll,
                    style: BaseStyle.s18w400.c(AppColors.hex3234),
                  ).padRight(10),
                  SvgPicture.asset(AssetIcons.icRightArrow),
                ],
              ),
            ],
          ).padBottom(20.r).padH(24.r),

          BlocBuilder<SelectCategoriesCubit,SelectCategoriesState>(
            builder: (context,state) {
              return SizedBox(
                height: 60.r,
                child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 24.r),
                    clipBehavior: Clip.none,
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return categoriesWidgets(
                          categories: categories[index],
                          isSelected:state.currentIndex==index,
                        onTap: (){
                            context.read<SelectCategoriesCubit>().updateIndex(index);
                        }


                      ).padRight(7.r);
                    }),
              );
            }
          ).padBottom(32.r),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomWidgets.customText(
                  data: AppStrings.openRestaurants,
                  style: BaseStyle.s20w400.c(AppColors.hex3234)
              ),
              Row(
                children: [
                  CustomWidgets.customText(
                      data: AppStrings.seeAll,
                    style: BaseStyle.s18w400.c(AppColors.hex3234),
                  ).padRight(10.r),
                  SvgPicture.asset(AssetIcons.icRightArrow),
                  
                ],
              )
            ],
          ).padH(24.r).padBottom(20.r),


        ],
      ),
    );
  }
  Widget categoriesWidgets({CategoriesModel? categories,bool? isSelected = false,VoidCallback? onTap}){
    return Center(
        child: Material(
          color: AppColors.white,
          shadowColor: AppColors.hex969615,
          borderRadius: BorderRadius.circular(39.r),
          elevation: 1.2,
          child: CustomWidgets.customContainer(
            onTap: onTap,
              borderRadius: BorderRadius.circular(39.r),
              foregroundDecoration: BoxDecoration(
                  color: AppColors.transparent,
                  borderRadius: BorderRadius.circular(39.r)
              ),
              h: 60.r,
              color: (isSelected ?? false) ? AppColors.hexFfd2:AppColors.white,
              child: Row(
                children: [
                  CustomWidgets.customContainer(
                    h: 44.r,
                    w: 44.r,
                    boxShape: BoxShape.circle,
                    color: AppColors.hex98a8,
                  ).padRight(13.r),
                  CustomWidgets.customText(
                    data: categories?.title.toString() ?? 'Data',
                    style: BaseStyle.s14w500.w(700).c(AppColors.hex3234).family(FontFamily.sen)
                  )
                ],
              ).padH(10.r)
          ),
        ),
      );

  }
}

class CategoriesModel {
  final String title;
  final String? imagePath;
  CategoriesModel({required this.title, this.imagePath});
}
