import 'package:dijipol/data/repositories/login_repository.dart';
import 'package:dijipol/data/repositories/signup_repository.dart';
import 'package:dijipol/presentation/auth/forgot_pass.dart';
import 'package:dijipol/presentation/auth/login.dart';
import 'package:dijipol/presentation/auth/register.dart';
import 'package:dijipol/presentation/first_open/select_language.dart';
import 'package:dijipol/presentation/first_open/steps_pages.dart';
import 'package:dijipol/presentation/home/account/change_settings.dart';
import 'package:dijipol/presentation/home/home_bottom_tabs.dart';
import 'package:dijipol/presentation/home/offers/Arac/arac_insurance_offer.dart';
import 'package:dijipol/presentation/home/support/branches.dart';
import 'package:dijipol/presentation/home/support/faq.dart';
import 'package:dijipol/presentation/home/offers/kasko/kasko_enter_info.dart';
import 'package:dijipol/presentation/home/offers/kasko/kasko_home_screen.dart';
import 'package:dijipol/presentation/home/offers/kasko/kasko_request_received.dart';
import 'package:dijipol/presentation/home/offers/kasko/kasko_view_offer.dart';
import 'package:dijipol/presentation/home/support/query_insurance_value.dart';
import 'package:dijipol/presentation/home/support/submit_claim.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:dijipol/presentation/home/offers/Zorunlu/zorunlu_enter_info.dart';
import 'package:dijipol/presentation/home/offers/Zorunlu/zorunlu_home_screen.dart';
import 'package:dijipol/presentation/home/offers/Zorunlu/zorunlu_view_offer.dart';
import 'package:dijipol/presentation/home/offers/Dask/dask_enter_info.dart';
import 'package:dijipol/presentation/home/offers/Dask/dask_home_screen.dart';
import 'package:dijipol/presentation/home/offers/Dask/dask_view_offer.dart';
import 'package:dijipol/presentation/home/offers/Dask/dask_request_received.dart';
import 'package:dijipol/presentation/home/offers/Dask/dask_payment.dart';
import 'package:dijipol/presentation/home/offers/Tamamlay/tamamlayıcı_enter_info.dart';
import 'package:dijipol/presentation/home/offers/Tamamlay/tamamlayıcı_home_screen.dart';
import 'package:dijipol/presentation/home/offers/Tamamlay/tamamlayıcı_view_offer.dart';
import 'package:dijipol/presentation/home/offers/Tamamlay/tamamlayıcı_request_received.dart';
import 'package:dijipol/presentation/home/offers/Yabanci/yabanci_enter_info.dart';
import 'package:dijipol/presentation/home/offers/Yabanci/yabanci_home_screen.dart';
import 'package:dijipol/presentation/home/offers/Yabanci/yabanci_view_offer.dart';
import 'package:dijipol/presentation/home/offers/Seyahat/seyahat_enter_info.dart';
import 'package:dijipol/presentation/home/offers/Seyahat/seyahat_home_screen.dart';
import 'package:dijipol/presentation/home/offers/Seyahat/seyahat_view_offer.dart';
import 'package:dijipol/presentation/home/offers/Arac/arac_enter_info.dart';
import 'package:dijipol/presentation/home/offers/Arac/arac_home_screen.dart';
import 'package:dijipol/presentation/home/offers/Arac/arac_view_offer.dart';
import 'package:dijipol/presentation/home/offers/Konut/konut_enter_info.dart';
import 'package:dijipol/presentation/home/offers/Konut/konut_home_screen.dart';
import 'package:dijipol/presentation/home/offers/Konut/konut_view_offer.dart';
import 'package:dijipol/presentation/home/offers/Bireysel/bireysel_enter_info.dart';
import 'package:dijipol/presentation/home/offers/Bireysel/bireysel_home_screen.dart';
import 'package:dijipol/presentation/home/offers/Bireysel/bireysel_request_received.dart';
import 'package:dijipol/presentation/home/offers/Cep/cep_request_received.dart';
import 'package:dijipol/presentation/home/offers/Cep/cep_enter_info.dart';
import 'package:dijipol/presentation/home/offers/Cep/cep_home_screen.dart';
import 'package:dijipol/presentation/home/offers/Evcil/evcil_request_received.dart';
import 'package:dijipol/presentation/home/offers/Evcil/evcil_enter_info.dart';
import 'package:dijipol/presentation/home/offers/Evcil/evcil_home_screen.dart';
import 'package:dijipol/presentation/home/account/change_password.dart';
import 'package:dijipol/presentation/home/account/change_language.dart';

import 'logic/cubits/login_cubit/login_cubit.dart';
import 'logic/cubits/signup_cubit/signup_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dijipol',
      theme: ThemeData(
        // primarySwatch: MaterialColor(
        //   0xFF090f4e,
        //   materialColorMaker(9, 15, 78),
        // ),
        fontFamily: 'Poppins',
        primaryColor: const Color(0xFF0047ba),
        primaryColorDark: const Color(0xFF090f4e),
        primaryColorLight: const Color(0xFF5a7184),
        backgroundColor: Colors.white,
        highlightColor: Colors.transparent,
      ),
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const <Locale>[
        Locale('en', ''),
        Locale('tr', ''),
        // Locale('ar', ''),
        // Locale('fa', ''),
        // Locale('ru', ''),
      ],
      home: SelectLanguageScreen(),
      routes: <String, Widget Function(BuildContext context)>{
        LoginScreen.routeName: (_) => BlocProvider(
              create: (context) => LoginCubit(
                repository: LoginRepository(),
              ),
              child: LoginScreen(),
            ),
        Register.routeName: (_) => BlocProvider(
              create: (context) => SignupCubit(
                repository: SignupRepository(),
              ),
              child: Register(),
            ),
        StepsPagesScreen.routeName: (_) => StepsPagesScreen(),
        HomeBottomTabs.routeName: (_) => HomeBottomTabs(),
        ForgotPass.routeName: (_) => ForgotPass(),
        Register.routeName: (_) => Register(),
        Branches.routeName: (_) => Branches(),
        SubmitClaim.routeName: (_) => SubmitClaim(),
        QueryInsuranceValue.routeName: (_) => QueryInsuranceValue(),
        Faq.routeName: (_) => Faq(),
        KaskoHomeScreen.routeName: (_) => KaskoHomeScreen(),
        KaskoEnterInfo.routeName: (_) => KaskoEnterInfo(),
        KaskoRequestReceived.routeName: (_) => KaskoRequestReceived(),
        KaskoViewOffer.routeName: (_) => KaskoViewOffer(),
        ZorunluHomeScreen.routeName: (_) => ZorunluHomeScreen(),
        ZorunluEnterInfo.routeName: (_) => ZorunluEnterInfo(),
        ZorunluViewOffer.routeName: (_) => ZorunluViewOffer(),
        DaskHomeScreen.routeName: (_) => DaskHomeScreen(),
        DaskEnterInfo.routeName: (_) => DaskEnterInfo(),
        DaskViewOffer.routeName: (_) => DaskViewOffer(),
        DaskRequestReceived.routeName: (_) => DaskRequestReceived(),
        DaskPayment.routeName: (_) => DaskPayment(),
        TamamlayHomeScreen.routeName: (_) => TamamlayHomeScreen(),
        TamamlayEnterInfo.routeName: (_) => TamamlayEnterInfo(),
        TamamlayRequestReceived.routeName: (_) => TamamlayRequestReceived(),
        TamamlayViewOffer.routeName: (_) => TamamlayViewOffer(),
        YabanciHomeScreen.routeName: (_) => YabanciHomeScreen(),
        YabanciEnterInfo.routeName: (_) => YabanciEnterInfo(),
        YabanciViewOffer.routeName: (_) => YabanciViewOffer(),
        SeyahatHomeScreen.routeName: (_) => SeyahatHomeScreen(),
        SeyahatEnterInfo.routeName: (_) => SeyahatEnterInfo(),
        SeyahatViewOffer.routeName: (_) => SeyahatViewOffer(),
        AracHomeScreen.routeName: (_) => AracHomeScreen(),
        AracEnterInfo.routeName: (_) => AracEnterInfo(),
        AracViewOffer.routeName: (_) => AracViewOffer(),
        AracInsuranceOffer.routname: (_) => AracInsuranceOffer(),
        BireyselHomeScreen.routeName: (_) => BireyselHomeScreen(),
        BireyselEnterInfo.routeName: (_) => BireyselEnterInfo(),
        BireyselRequestReceived.routeName: (_) => BireyselRequestReceived(),
        KnoutHomeScreen.routeName: (_) => KnoutHomeScreen(),
        KonutEnterInfo.routeName: (_) => KonutEnterInfo(),
        KnoutViewOffer.routeName: (_) => KnoutViewOffer(),
        CepRequestReceived.routeName: (_) => CepRequestReceived(),
        CepHomeScreen.routeName: (_) => CepHomeScreen(),
        CepEnterInfo.routeName: (_) => CepEnterInfo(),
        EvcilRequestReceived.routeName: (_) => EvcilRequestReceived(),
        EvcilHomeScreen.routeName: (_) => EvcilHomeScreen(),
        EvcilEnterInfo.routeName: (_) => EvcilEnterInfo(),
        ChangePassword.routeName: (_) => ChangePassword(),
        ChangeLanguage.routeName: (_) => ChangeLanguage(),
        ChangeSetting.routeName: (_) => ChangeSetting(),
        SelectLanguageScreen.routeName: (_) => SelectLanguageScreen(),
      },
    );
  }
}
