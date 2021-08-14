import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    primaryColor: primary400,
    accentColor: Colors.white,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    hintColor: neutral200,
    errorColor: error600,
    shadowColor: shadow,
    scaffoldBackgroundColor: neutral900,
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      color: neutral700,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: neutral700,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: neutral500,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      modalBackgroundColor: neutral900.withOpacity(0.65),
      elevation: 0,
    ),
    dialogTheme: DialogTheme(
      backgroundColor: neutral500,
      titleTextStyle: textStyle.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      contentTextStyle: textStyle.copyWith(
        fontSize: 14,
      ),
    ),
    textTheme: TextTheme(
      headline1: textStyle.copyWith(
        fontSize: 64,
        fontWeight: FontWeight.bold,
      ),
      headline2: textStyle.copyWith(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      headline3: textStyle.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      headline4: textStyle.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      bodyText1: textStyle.copyWith(
        fontSize: 18,
      ),
      bodyText2: textStyle.copyWith(
        fontSize: 14,
      ),
      button: textStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      caption: textStyle.copyWith(
        fontSize: 12,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: Colors.white,
        animationDuration: Duration.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary400,
        onPrimary: Colors.white,
        elevation: 0,
        minimumSize: const Size.fromHeight(44),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: neutral100,
        backgroundColor: neutral600,
        elevation: 0,
        minimumSize: const Size.fromHeight(44),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        side: const BorderSide(
          color: neutral100,
        ),
      ),
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: primary50,
      inactiveTrackColor: primary600,
      thumbColor: primary800,
      //thumbShape: ,
      trackHeight: 1,
      overlayColor: primary600.withOpacity(0.35),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color>((states) {
        return Colors.white;
      }),
      trackColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.white;
        } else if (states.contains(MaterialState.disabled)) {
          return neutral700;
        } else {
          return Colors.transparent;
        }
      }),
      overlayColor: MaterialStateProperty.resolveWith((states) => primary200),
    ),
  );

  static const textStyle = TextStyle(
    color: Colors.white,
    letterSpacing: -0.5,
  );

  static const boxShadow = [
    BoxShadow(
      color: shadow,
      offset: Offset(0, 2),
      blurRadius: 6,
      spreadRadius: 0,
    )
  ];

  static const Color primary800 = Color(0xff112e17);
  static const Color primary600 = Color(0xff234e2b);
  static const Color primary400 = Color(0xff387444);
  static const Color primary200 = Color(0xff50a160);
  static const Color primary50 = Color(0xff7ac489);

  static const Color secondary800 = Color(0xff1d2c57);
  static const Color secondary600 = Color(0xff2d427e);
  static const Color secondary400 = Color(0xff4563bb);
  static const Color secondary200 = Color(0xff738fdf);
  static const Color secondary50 = Color(0xff9ab1f4);

  static const Color neutral900 = Color(0xff070912);
  static const Color neutral700 = Color(0xff0f111c);
  static const Color neutral600 = Color(0xff131625);
  static const Color neutral500 = Color(0xff191d2f);
  static const Color neutral400 = Color(0xff272c47);
  static const Color neutral200 = Color(0xff8087ab);
  static const Color neutral100 = Color(0xffc6c8d1);

  static const Color error800 = Color(0xff7b3939);
  static const Color error600 = Color(0xffa25757);
  static const Color error400 = Color(0xffc28585);

  static const Color shadow = Color(0xff1e2021);

  static const Color disabled200 = Color(0xff757783);

  static const int smallDeviceWidth = 321; // iPhone SE Gen1
  static const int smallDeviceWidthGen2 = 375; // iPhone SE Gen2
  static const int smallDeviceHeight = 667;
}