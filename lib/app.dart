import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'app/home/screens/home_screen.dart';
import 'app/login/screen/login_screen.dart';
import 'app/onboard/screens/onboard_screen.dart';
import 'app/register/screens/register_screen.dart';
import 'constants/app_colors.dart';
import 'cubit/bar_cubit.dart/bar_cubit.dart';
import 'cubit/cart/cart_cubit.dart';
import 'cubit/home/home_cubit.dart';
import 'cubit/image/image_picker_cubit.dart';
import 'cubit/language/language_cubit.dart';
import 'cubit/notification/notification_cubit.dart';
import 'cubit/onboard/onboard_cubit.dart';
import 'cubit/password/password_cubit.dart';
import 'cubit/products/product_cubit.dart';
import 'cubit/search/search_cubit.dart';
import 'provider/cart_provider.dart';
import 'provider/favourite_provider.dart';
import 'provider/notification_provider.dart';
import 'provider/onboard_provider.dart';
import 'provider/order_provider.dart';
import 'provider/payment_provider.dart';
import 'provider/reset_provider.dart';
import 'provider/shopping_provider.dart';

class MyApp extends StatelessWidget {
  final int? onboard;
  final int? register;
  const MyApp({
    super.key,
    this.onboard,
    this.register,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(create: (context) => ProductCubit()..productFetching()),
        BlocProvider(create: (context) => OnboardCubit()),
        BlocProvider(create: (context) => SearchCubit()),
        BlocProvider(create: (context) => PasswordCubit()),
        BlocProvider(create: (context) => CartCubit()),
        BlocProvider(create: (context) => NotificationCubit()),
        BlocProvider(create: (context) => HomeCubit()),
        BlocProvider(create: (context) => BarCubit()),
        BlocProvider(create: (context) => LanguageCubit()),
        ChangeNotifierProvider(create: (context) => CartProvider()),
        ChangeNotifierProvider(create: (context) => ShoppingProvider()),
        ChangeNotifierProvider(create: (context) => FavouriteProvider()),
        ChangeNotifierProvider(create: (context) => ImagePickerProvider()),
        ChangeNotifierProvider(create: (context) => OrderProvider()),
        ChangeNotifierProvider(create: (context) => PaymentProvider()),
        ChangeNotifierProvider(create: (context) => OnboardProvider()),
        ChangeNotifierProvider(create: (context) => ResetProvider()),
        ChangeNotifierProvider(create: (context) => NotificationProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: AppColors.orangeColor,
        ),
        home: register == 3
            ? const LoginScreen()
            : register == 2
                ? const HomeScreen()
                : (onboard == 1
                    ? const RegisterScreen()
                    : const OnboardScreen()),
      ),
    );
  }
}
