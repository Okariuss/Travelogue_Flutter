import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kartal/kartal.dart';
import 'package:travelogue_flutter/core/constants/app_colors.dart';
import 'package:travelogue_flutter/feature/onboard/viewModel/onboard_page_view_model.dart';
import 'package:travelogue_flutter/product/enum/path/image_path_enum.dart';
import 'package:travelogue_flutter/product/enum/size/icon_size.dart';
import 'package:travelogue_flutter/product/enum/size/image_size.dart';
import 'package:travelogue_flutter/product/init/language/locale_keys.g.dart';

part 'mixin/onboard_page_mixin.dart';

class CustomOnboardPage extends StatefulWidget {
  const CustomOnboardPage({super.key});

  @override
  State<CustomOnboardPage> createState() => _CustomOnboardPageState();
}

class _CustomOnboardPageState extends State<CustomOnboardPage>
    with _OnboardPageMixin {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<OnboardPageViewModel>();

    return Padding(
      padding: context.padding.normal,
      child: BlocBuilder<OnboardPageViewModel, OnBoardState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 8,
                child: PageView.builder(
                  itemCount: state.onBoardItems?.length,
                  controller: viewModel.pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: viewModel.changeCurrentIndex,
                  itemBuilder: (context, index) => Column(
                    children: [
                      _getOnboardImage(index, viewModel),
                      _buildColumnDescription(index, viewModel),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: viewModel.completeToOnBoard,
                      child: const Text(
                        LocaleKeys.onboard_skip,
                        style: TextStyle(
                          color: ColorConstants.onboardSelectedCircleColor,
                        ),
                      ).tr(),
                    ),
                    _buildDots(viewModel),
                    IconButton(
                      onPressed: () {
                        viewModel.nextPage(context);
                      },
                      icon: const Icon(Icons.arrow_forward_ios_outlined),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
