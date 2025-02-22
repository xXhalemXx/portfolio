import 'package:flutter/material.dart';
import 'package:portfolio/presentation/route/routes.dart';
import 'package:portfolio/presentation/utils/extensions/extensions.dart';
import 'package:portfolio/presentation/views/menu/menu_page.dart';
import 'package:portfolio/presentation/widgets/widgets.dart';

import '../configs/configs.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key, required this.page}) : super(key: key);
  final Widget page;
  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> with TickerProviderStateMixin {
  bool _isDrawerOpen = false;
  int sectors = 10;
  double screenWidth = s0;
  double sectorWidth = s0;

  final GlobalKey _globalKey = GlobalKey();
  late AnimationController _menuController;
  late AnimationController _loadingController;
  late AnimationController _appBarController;
  final List<Interval> _itemSlideIntervals = [];
  Duration get staggeredDuration => duration50;
  Duration get itemSlideDuration => duration1000;
  Duration get labelDuration => duration1000;
  Duration get slideDuration =>
      staggeredDuration +
      (staggeredDuration * sectors) +
      itemSlideDuration +
      duration200;

  void createStaggeredIntervals() {
    for (int i = 0; i < sectors; i++) {
      final Duration start = staggeredDuration + (staggeredDuration * i);
      final Duration end = start + itemSlideDuration;
      _itemSlideIntervals.add(
        Interval(
          start.inMilliseconds / slideDuration.inMilliseconds,
          end.inMilliseconds / slideDuration.inMilliseconds,
        ),
      );
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    createStaggeredIntervals();
    _menuController = AnimationController(
      vsync: this,
      duration: duration500,
    );
    _loadingController = AnimationController(
      vsync: this,
      duration: slideDuration,
    );
    _appBarController = AnimationController(vsync: this, duration: duration300);
    screenWidth = context.screenWidth;
    sectorWidth = screenWidth / sectors;
  }

  @override
  void dispose() {
    _menuController.dispose();
    _loadingController.dispose();
    _appBarController.dispose();
    super.dispose();
  }

  void onMenuTapped() {
    setState(() {
      _isDrawerOpen = !_isDrawerOpen;
    });
    if (_isDrawerOpen) {
      _menuController.forward();
    } else {
      _menuController.reverse();
    }
  }

  void _handleNavigation(String routeName, bool isContactMe) {
    _menuController.reverse().then((value) {
      if (_menuController.status == AnimationStatus.dismissed) {
        _loadingController.forward();
        _appBarController.forward();
        navigate(routeName, isContactMe);
      }
    });
  }

  Future<void> navigate(String routeName, bool isContactMe) async {
    _loadingController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        isContactMe == true
            ? Navigator.pushNamed(
                context,
                routeName,
                arguments: true,
              )
            : Navigator.pushNamed(
                context,
                routeName,
              );
      }
    });
  }

  void navigateToHomePage() {
    _loadingController.forward();
    navigate(Routes.home, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      extendBodyBehindAppBar: true,
      appBar: AnimatedAppBar(
        animation: _appBarController.view,
        appBar: AppBar(
          leadingWidth: context.adaptive(s40, s70),
          leading: Logo(
            onTap: navigateToHomePage,
          ),
          actions: [
            MenuButton(
              onPressed: onMenuTapped,
              hasMenuTapped: _isDrawerOpen,
            ),
            horizontalSpaceLarge,
          ],
        ),
      ),
      body: <Widget>[
        widget.page,
        MenuPage(
          onMenuItemTapped: (index) => _handleNavigation(
              ksMenu[index].route, ksMenu[index] == ksMenu.last),
          animation: _menuController.view,
        ),
        <Widget>[
          ...List.generate(
            sectors,
            (index) => CustomPageTransition(
              startController: _loadingController,
              height: context.screenHeight,
              width: sectorWidth,
              boxColor: kBlack,
              coverColor: kPrimary,
              index: index,
              slideInterval: _itemSlideIntervals[index],
            ),
          ),
        ].addRow(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
      ].addStack(),
    );
  }
}
