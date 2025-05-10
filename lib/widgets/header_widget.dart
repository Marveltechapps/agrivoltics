import 'package:flutter/material.dart';
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
              Image.asset(
                'assets/logo/LOGO.png',
                width: 200,
                fit: BoxFit.contain,
              ),
              Expanded(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 25,
                  children: [
                    _buildNavItem('About Us'),
                    _buildNavItem('Land partnership'),
                    _buildNavItem('Solar power'),
                    _buildNavItem('Integrated farming'),
                    _buildNavItem('Solutions'),
                    _buildNavItem('Contact'),
                  ],
                ),
              ),
            ],
          ),
        );
      } else {
        return AppBar(
          toolbarHeight: 80,
          title: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo/LOGO.png',
                  width: MediaQuery.of(context).size.width / 3.4,
                  fit: BoxFit.contain,
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

  Widget _buildNavItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: AppTextStyles.headerNavigation,
      ),
    );
  }
}
