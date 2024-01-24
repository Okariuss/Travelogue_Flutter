// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelogue_flutter/core/enum/cache_items.dart';
import 'package:travelogue_flutter/feature/auth/login/login_page.dart';
import 'package:travelogue_flutter/feature/home/home_page.dart';
import 'package:travelogue_flutter/feature/onboard/model/onboard_page_model.dart';
import 'package:travelogue_flutter/product/enum/path/image_path_enum.dart';
import 'package:travelogue_flutter/product/init/language/locale_keys.g.dart';

class OnboardPageViewModel extends Cubit<OnBoardState> {
  OnboardPageViewModel() : super(const OnBoardState());

  final List<OnboardPageVariables> _onBoardItems = [
    OnboardPageVariables(
      ImagePathEnum.TRAVEL,
      LocaleKeys.onboard_page1_title,
      LocaleKeys.onboard_page1_description,
    ),
    OnboardPageVariables(
      ImagePathEnum.HOTEL,
      LocaleKeys.onboard_page2_title,
      LocaleKeys.onboard_page2_description,
    ),
    OnboardPageVariables(
      ImagePathEnum.NEED_HELP,
      LocaleKeys.onboard_page3_title,
      LocaleKeys.onboard_page3_description,
    ),
  ];
  List<OnboardPageVariables> get onBoardItems => _onBoardItems;

  PageController pageController = PageController();

  Future<void> completeToOnBoard() async {
    await CacheItems.isFirst.writeBool(false);
  }

  void changeCurrentIndex(int index) {
    emit(state.copyWith(currentIndex: index));
  }

  int getCurrentIndex() {
    return state.currentIndex;
  }

  void navigateToNextScreen(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return CacheItems.isLogin.readBool
              ? const HomePage()
              : const LoginPage();
        },
      ),
    );
  }

  void nextPage(BuildContext context) {
    if (state.currentIndex < onBoardItems.length - 1) {
      pageController.animateToPage(
        state.currentIndex + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
      emit(state.copyWith(currentIndex: state.currentIndex + 1));
    } else {
      completeToOnBoard();
      navigateToNextScreen(context);
    }
  }
}

class OnBoardState extends Equatable {
  const OnBoardState({
    this.currentIndex = 0,
    this.onBoardItems,
  });

  final int currentIndex;
  final List<OnboardPageVariables>? onBoardItems;

  @override
  List<Object?> get props => [currentIndex, onBoardItems];

  OnBoardState copyWith({
    int? currentIndex,
    List<OnboardPageVariables>? onBoardItems,
  }) {
    return OnBoardState(
      currentIndex: currentIndex ?? this.currentIndex,
      onBoardItems: onBoardItems ?? this.onBoardItems,
    );
  }
}
