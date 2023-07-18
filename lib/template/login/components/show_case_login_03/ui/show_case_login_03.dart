import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../model/item_tabs.dart';
import '../model/dimensions.dart';
import '../model/screensbar.dart';
import './login.dart';
import '../../../../register/components/show_case_register_03/ui/show_case_register_03.dart';

class ShowCaseLogin03 extends StatelessWidget {
  ShowCaseLogin03({super.key});
  var ItemsTabs = new ItemSingUp();
  var Dimensions = new Models_Dimensions();
  TabBar get _tabBar => const TabBar(
        tabs: [],
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: ItemsTabs.tabs.length,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverOverlapAbsorber(
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  sliver: SliverAppBar(
                    leading: Builder(
                      builder: (context) => IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 30,
                          color: Color.fromARGB(255, 252, 250, 250),
                        ),
                        onPressed: () => Get.back(),
                      ),
                    ),
                    centerTitle: true,
                    backgroundColor: Colors.white,
                    elevation: 0,
                    pinned: true,
                    expandedHeight: Dimensions.M_SizeBoxMenu,
                    forceElevated: innerBoxIsScrolled,
                    flexibleSpace: const FlexibleSpaceBar(
                      background: ScreensBar(),
                    ),
                    bottom: PreferredSize(
                      preferredSize: _tabBar.preferredSize,
                      child: ColoredBox(
                        color: Colors.white,
                        child: TabBar(
                          isScrollable: true,
                          indicator: const BoxDecoration(),
                          labelColor: Colors.black,
                          labelStyle: GoogleFonts.kanit(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          unselectedLabelColor: const Color(0xFF424242),
                          unselectedLabelStyle: GoogleFonts.kanit(
                            textStyle: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          tabs: ItemsTabs.tabs
                              .map((String name) => Tab(text: name))
                              .toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              ];
            },
            body: const TabBarView(
              children: [
                Login(),
                Register(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
