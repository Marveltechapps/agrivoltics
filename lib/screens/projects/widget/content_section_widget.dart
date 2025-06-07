import 'package:agri_voltics/widgets/network_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../theme/styles.dart';

class ContentSectionWidget extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final bool imageLeft;

  const ContentSectionWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl,
    this.imageLeft = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 991;
    final content = [
      Expanded(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: NetworkImageWidget(
            imageUrl,
            fit: BoxFit.fitWidth,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      const SizedBox(width: 40),
      Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.inter(
                  // fontFamily: 'Inter',
                  fontSize: FontSizes.scale(context, 32),
                  color: AppColors.text,
                  fontWeight: FontWeight.w600,
                  height: 1,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                spacing: 10,
                children: [
                  SvgPicture.string(
                    '''<svg width="48" height="49" viewBox="0 0 48 49" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M20.952 0.706722C16.6205 1.26925 12.6547 2.92869 9.18581 5.61006C8.08889 6.46322 6.22319 8.3008 5.31377 9.42585C2.72616 12.6322 1.01046 16.4199 0.279179 20.5451C0.0166674 22.0076 -0.0864621 25.5234 0.0822952 27.1266C0.851079 34.3082 4.81688 40.7678 10.9203 44.7524C13.9579 46.7306 17.3799 47.9775 21.0926 48.4369C22.5176 48.615 25.5178 48.6057 26.9991 48.4275C37.8746 47.0775 46.5093 38.4427 47.8594 27.5673C48.0469 26.0484 48.0469 23.0858 47.8594 21.567C46.9968 14.5917 43.0873 8.3383 37.1714 4.44751C34.0869 2.42242 30.6555 1.16611 26.9991 0.706722C25.574 0.537964 22.302 0.537964 20.952 0.706722ZM26.2959 9.23834C31.6305 10.354 35.5401 14.8636 35.7838 20.1794C35.8588 21.867 35.6338 22.9264 34.7432 24.9984C33.2431 28.4673 29.868 33.3425 25.3865 38.5084C24.6646 39.3521 24.0365 40.0365 23.999 40.0365C23.9615 40.0365 23.3333 39.3521 22.6114 38.5177C17.0237 32.0581 13.4235 26.461 12.411 22.6452C12.1297 21.6045 12.1766 19.2794 12.486 18.0981C13.1047 15.773 14.0704 14.076 15.683 12.4635C17.483 10.6634 19.63 9.57586 22.2645 9.13521C23.2302 8.97583 25.2928 9.02271 26.2959 9.23834Z" fill="#7B9540"/>
<path d="M23.3425 16.1304C21.1299 16.4398 19.4986 18.2961 19.4798 20.5368C19.4611 22.1963 20.2111 23.6026 21.5706 24.4839C22.9581 25.3745 25.0395 25.3745 26.427 24.4839C27.7677 23.6213 28.5365 22.2056 28.5177 20.5837C28.499 17.8179 26.0895 15.7554 23.3425 16.1304Z" fill="#7B9540"/>
</svg>
''',
                    width: 50,
                  ),
                  Expanded(
                    child: Text('Panavayal, Sivagangai, Tamil Nadu.',
                        style: GoogleFonts.poppins(
                            fontSize: FontSizes.scale(context, 18),
                            fontWeight: FontWeight.w500),
                        maxLines: 2),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Text(
                description,
                style: AppTextStyles.bodyText,
                // overflow: TextOverflow.fade,
              ),
            ],
          ),
        ),
      ),
    ];

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width < 800 ? 20 : 60,
          vertical: 60),
      child: Container(
        height: isDesktop ? null : null,
        constraints: BoxConstraints(maxWidth: 1280),
        child: isDesktop
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: imageLeft
                    ? content.reversed.toList()
                    : content.reversed.toList(),
              )
            : Column(
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style:
                            AppTextStyles.sectionTitle.copyWith(fontSize: 30),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    spacing: 10,
                    children: [
                      SvgPicture.string(
                        '''<svg width="48" height="49" viewBox="0 0 48 49" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M20.952 0.706722C16.6205 1.26925 12.6547 2.92869 9.18581 5.61006C8.08889 6.46322 6.22319 8.3008 5.31377 9.42585C2.72616 12.6322 1.01046 16.4199 0.279179 20.5451C0.0166674 22.0076 -0.0864621 25.5234 0.0822952 27.1266C0.851079 34.3082 4.81688 40.7678 10.9203 44.7524C13.9579 46.7306 17.3799 47.9775 21.0926 48.4369C22.5176 48.615 25.5178 48.6057 26.9991 48.4275C37.8746 47.0775 46.5093 38.4427 47.8594 27.5673C48.0469 26.0484 48.0469 23.0858 47.8594 21.567C46.9968 14.5917 43.0873 8.3383 37.1714 4.44751C34.0869 2.42242 30.6555 1.16611 26.9991 0.706722C25.574 0.537964 22.302 0.537964 20.952 0.706722ZM26.2959 9.23834C31.6305 10.354 35.5401 14.8636 35.7838 20.1794C35.8588 21.867 35.6338 22.9264 34.7432 24.9984C33.2431 28.4673 29.868 33.3425 25.3865 38.5084C24.6646 39.3521 24.0365 40.0365 23.999 40.0365C23.9615 40.0365 23.3333 39.3521 22.6114 38.5177C17.0237 32.0581 13.4235 26.461 12.411 22.6452C12.1297 21.6045 12.1766 19.2794 12.486 18.0981C13.1047 15.773 14.0704 14.076 15.683 12.4635C17.483 10.6634 19.63 9.57586 22.2645 9.13521C23.2302 8.97583 25.2928 9.02271 26.2959 9.23834Z" fill="#7B9540"/>
<path d="M23.3425 16.1304C21.1299 16.4398 19.4986 18.2961 19.4798 20.5368C19.4611 22.1963 20.2111 23.6026 21.5706 24.4839C22.9581 25.3745 25.0395 25.3745 26.427 24.4839C27.7677 23.6213 28.5365 22.2056 28.5177 20.5837C28.499 17.8179 26.0895 15.7554 23.3425 16.1304Z" fill="#7B9540"/>
</svg>
''',
                        width: 30,
                      ),
                      Expanded(
                        child: Text('Panavayal, Sivagangai, Tamil Nadu.',
                            style: GoogleFonts.poppins(
                                fontSize: 12, fontWeight: FontWeight.w500),
                            maxLines: 2),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    description,
                    style: AppTextStyles.bodyText,
                  ),
                  const SizedBox(height: 40),
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: NetworkImageWidget(
                      imageUrl,
                      fit: BoxFit.fitWidth,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
