import 'package:flutter/material.dart';
import './styles/styles.dart';

class InputDesign3 extends StatefulWidget {
  const InputDesign3({Key? key}) : super(key: key);

  @override
  State<InputDesign3> createState() => _InputDesign3State();
}

class _InputDesign3State extends State<InputDesign3> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isLargeScreen = screenWidth > AppStyles.breakpointLarge;
    bool isSmallScreen = screenWidth <= AppStyles.breakpointSmall;

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal:
              isSmallScreen ? AppStyles.paddingSmall : AppStyles.paddingLarge,
          vertical: 30),
      child: isLargeScreen
          ? _buildRowLayout(context)
          : _buildColumnLayout(context),
    );
  }

  Widget _buildRowLayout(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildImage(),
        SizedBox(width: AppStyles.gapLarge),
        _buildTextContent(context),
      ],
    );
  }

  Widget _buildColumnLayout(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isSmallScreen = screenWidth <= AppStyles.breakpointSmall;

    return Container(
      child: Wrap(
        spacing: 20,
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.center,
        children: [
          _buildImage(),
          SizedBox(
              height: isSmallScreen ? AppStyles.gapSmall : AppStyles.gapMedium),
          _buildTextContent(context),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return Flexible(
      flex: 1,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 360,
          maxWidth: 834,
          minHeight: 194.245,
          maxHeight: 450,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/6ddcdb441f267f9a2bbad75db46e6de6ddc1ed49',
            fit: BoxFit.cover,
            semanticLabel:
                'Integrated farming illustration showing a farm with solar panels, wind turbines, livestock and crops',
          ),
        ),
      ),
    );
  }

  Widget _buildTextContent(BuildContext context) {
    return Flexible(
      flex: 1,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth:
              MediaQuery.of(context).size.width > AppStyles.breakpointLarge
                  ? 360
                  : 0,
          maxWidth: 646,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Integrated Farming for a Greener Future',
              style: AppStyles.getTitleStyle(context),
            ),
            SizedBox(
              height:
                  MediaQuery.of(context).size.width <= AppStyles.breakpointSmall
                      ? 16
                      : 24.98,
            ),
            Text(
              'Integrating farming combines different agricultural practices, such as '
              'crop rotation, intercropping, and agroforestry, to optimize land use '
              'and enhance productivity. This method promotes the coexistence of '
              'crops and livestock, allowing for resource sharing and reducing '
              'dependency on chemical inputs. By fostering biodiversity and '
              'ecological balance, integrating farming practices leads to healthier '
              'ecosystems and improved yields.',
              style: AppStyles.getBodyStyle(context),
            ),
          ],
        ),
      ),
    );
  }
}
