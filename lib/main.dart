

import 'package:coffe_ui/features/onboarding/bloc/onboarding_bloc.dart';
import 'package:coffe_ui/features/screens/bloc/select_categories_bloc.dart';
import 'package:coffe_ui/features/splash/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/app_ui/app_ui.dart';
import 'core/services/navigation/src/app_router.dart';
import 'core/services/repositories/service_locator.dart';

void main()async{
  await setupServiceLocator();
  runApp( MultiBlocProvider(
      providers: [
        BlocProvider<OnboardingBloc>(create:(_)=>OnboardingBloc()),
        BlocProvider<SelectCategoriesCubit>(create:(_)=>SelectCategoriesCubit())
      ],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375,812),
        builder: (context,_){
          return MaterialApp(
            themeMode: ThemeMode.system,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            debugShowCheckedModeBanner: false,
            home: SplashScreen(),
            navigatorKey: getIt<AppRouter>().navigatorKey,
          );
        }
    );

  }
}
