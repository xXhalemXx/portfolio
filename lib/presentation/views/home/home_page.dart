import 'package:flutter/material.dart';
import 'package:portfolio/presentation/configs/configs.dart';
import 'package:portfolio/presentation/utils/extensions/extensions.dart';
import 'package:portfolio/presentation/views/wrapper.dart';
import 'package:portfolio/presentation/widgets/widgets.dart';

import 'introduction_page.dart';
import 'showcase_projects_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.isContactMe = false}) : super(key: key);
  final bool isContactMe;

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final _scrollController = ScrollController();
  List<Widget> mainPages = [];
  final _key = GlobalKey();
  bool _isDrawerOpen = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.isContactMe) {
        _scrollController.animateTo(
          context.screenHeight * 2,
          duration: duration500,
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    mainPages = [
      IntroductionPage(
        onTapSeeMyWorks: _onTapSeeMyWorks,
      ),
      const ShowcaseProjectsPage(),
      const FooterPage(),
    ];
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void onMenuTapped() {
    setState(() {
      _isDrawerOpen = !_isDrawerOpen;
    });
  }

  void _onTapSeeMyWorks() {
    _scrollController.animateTo(
      context.screenHeight,
      duration: duration500,
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      page: mainPages.addListView(
        key: _key,
        controller: _scrollController,
        physics: const ClampingScrollPhysics(),
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
