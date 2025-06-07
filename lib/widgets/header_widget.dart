import 'package:agri_voltics/providers/navigationprovider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../theme/styles.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        // Desktop View
        return Container(
          color: AppColors.white,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width > 991 ? 84 : 20,
            vertical: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  GoRouter.of(context).push('/');
                  context.read<NavigationProvider>().updateRoute('/');
                },
                child: Image.asset(
                  'assets/logo/LOGO.png',
                  width: 200,
                  fit: BoxFit.contain,
                ),
              ),
              Expanded(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 25,
                  children: [
                    InkWell(
                        onTap: () {
                          GoRouter.of(context).push('/');
                          context.read<NavigationProvider>().updateRoute('/');
                        },
                        child: _buildNavItem('About Us', '/', context)),
                    InkWell(
                        onTap: () {
                          GoRouter.of(context).push('/landpartner');
                          context
                              .read<NavigationProvider>()
                              .updateRoute('/landpartner');
                        },
                        child: _buildNavItem(
                            'Land partnership', '/landpartner', context)),
                    InkWell(
                        onTap: () {
                          GoRouter.of(context).push('/solarpower');
                          context
                              .read<NavigationProvider>()
                              .updateRoute('/solarpower');
                        },
                        child: _buildNavItem(
                            'Solar power', '/solarpower', context)),
                    InkWell(
                        onTap: () {
                          GoRouter.of(context).push('/integratedfarm');
                          context
                              .read<NavigationProvider>()
                              .updateRoute('/integratedfarm');
                        },
                        child: _buildNavItem(
                            'Integrated farming', '/integratedfarm', context)),
                    // InkWell(
                    //     onTap: () {
                    //       GoRouter.of(context).push('/solutions');
                    //     },
                    //     child: _buildNavItem('Solutions')),
                    InkWell(
                        onTap: () {
                          GoRouter.of(context).push('/projects');
                          context
                              .read<NavigationProvider>()
                              .updateRoute('/projects');
                        },
                        child: _buildNavItem('Projects', '/projects', context)),
                    InkWell(
                        onTap: () {
                          GoRouter.of(context).push('/contact');
                          context
                              .read<NavigationProvider>()
                              .updateRoute('/contact');
                        },
                        child: _buildNavItem('Contact', '/contact', context)),
                  ],
                ),
              ),
            ],
          ),
        );
      } else {
        return AppBar(
          toolbarHeight: 100,
          title: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    GoRouter.of(context).push('/');
                    context.read<NavigationProvider>().updateRoute('/');
                  },
                  child: Image.asset(
                    'assets/logo/LOGO.png',
                    width: MediaQuery.of(context).size.width / 3.4,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        );
      }
    });
  }

  Widget _buildNavItem(String text, String route, BuildContext context) {
    // final route =
    //     GoRouter.of(context).routerDelegate.currentConfiguration.fullPath;
    debugPrint('Current route: $route');
    debugPrint(
        'Current route from provider: ${context.watch<NavigationProvider>().currentRoute}');

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          Text(
            text,
            style: AppTextStyles.headerNavigation.copyWith(
                fontWeight:
                    context.watch<NavigationProvider>().currentRoute == route
                        ? FontWeight.bold
                        : FontWeight.w400,
                color: context.watch<NavigationProvider>().currentRoute == route
                    ? AppColors.primary
                    : AppColors.text),
          ),
          if (context.watch<NavigationProvider>().currentRoute == route)
            Container(
              margin: const EdgeInsets.only(top: 4),
              width: 32.0,
              height: 2,
              color: AppColors.primary,
            ),
        ],
      ),
    );
  }
}
