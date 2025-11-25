import 'package:coffe_ui/core/app_ui/app_ui.dart';
import 'package:coffe_ui/core/app_ui/src/widgets/src/custom_check_box.dart';
import 'package:coffe_ui/core/services/local_storage/sharedpreference_service.dart';
import 'package:coffe_ui/core/services/navigation/src/app_router.dart';
import 'package:coffe_ui/core/services/repositories/auth_repository.dart';
import 'package:coffe_ui/core/services/repositories/service_locator.dart';
import 'package:coffe_ui/features/auth_screen/bloc/login_bloc/login_bloc.dart';
import 'package:coffe_ui/features/auth_screen/bloc/sign_up_bloc/sign_up_bloc.dart';
import 'package:coffe_ui/features/onboarding/bloc/onboarding_bloc.dart';
import 'package:coffe_ui/features/screens/bloc/select_categories_bloc.dart';
import 'package:coffe_ui/features/splash/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main()async{
  await setupServiceLocator();
   LocalPreferences().init();
  runApp( MultiBlocProvider(
      providers: [
        BlocProvider<OnboardingBloc>(create:(_)=>OnboardingBloc()),
        BlocProvider<SelectCategoriesCubit>(create:(_)=>SelectCategoriesCubit()),
        BlocProvider<LoginBloc>(create: (_) => LoginBloc(authRepository: AuthRepository())),
        BlocProvider<SignUpBloc>(create: (_) => SignUpBloc(authRepository: AuthRepository())),
        BlocProvider<CheckboxCubit>(create: (_) => CheckboxCubit()),
      ],
      child: const MyApp(),),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375,812),
        builder: (context,_){
          return MaterialApp(
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            debugShowCheckedModeBanner: false,
            home: const SplashScreen(),
            navigatorKey: getIt<AppRouter>().navigatorKey,
          );
        },
    );

  }
}
