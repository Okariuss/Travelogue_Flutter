part of '../custom_onboard_page.dart';

mixin _OnboardPageMixin on State<CustomOnboardPage> {
  Column _buildColumnDescription(int index, OnboardPageViewModel viewModel) {
    return Column(
      children: [
        Text(
          viewModel.onBoardItems[index].header,
          style: GoogleFonts.baloo2(
            fontSize: IconSize.normal.value.toDouble(),
            fontWeight: FontWeight.bold,
          ),
        ).tr(),
        Text(
          viewModel.onBoardItems[index].subtitle,
          textAlign: TextAlign.center,
          style: GoogleFonts.alikeAngular(
            fontSize: IconSize.small.value.toDouble(),
          ),
        ).tr(),
      ],
    );
  }

  Widget _getOnboardImage(int index, OnboardPageViewModel viewModel) =>
      SizedBox(
        height: ImageSize.medium.value.toDouble(),
        child: viewModel.onBoardItems[index].imageName.toWidget,
      );

  Widget _buildDots(OnboardPageViewModel viewModel) {
    return ListView.builder(
      itemCount: viewModel.onBoardItems.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: context.padding.low,
        child: SizedBox(
          width: context.sized.normalValue,
          child: CircleAvatar(
            backgroundColor: index == viewModel.getCurrentIndex()
                ? ColorConstants.onboardSelectedCircleColor
                : ColorConstants.onboardUnselectedCircleColor,
          ),
        ),
      ),
    );
  }
}
