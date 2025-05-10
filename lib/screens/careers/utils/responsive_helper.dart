import 'package:flutter/material.dart';

class ResponsiveHelper {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 640;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width <= 991 &&
      MediaQuery.of(context).size.width > 640;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 991;

  static double getResponsiveFontSize(
    BuildContext context,
    double desktop,
    double tablet,
    double mobile,
  ) {
    if (isMobile(context)) return mobile;
    if (isTablet(context)) return tablet;
    return desktop;
  }

  static double getResponsiveLineHeight(
    BuildContext context,
    double desktop,
    double tablet,
    double mobile,
  ) {
    if (isMobile(context)) return mobile;
    if (isTablet(context)) return tablet;
    return desktop;
  }
}
