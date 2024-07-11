import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:employ_ease/res/components/common/search_field_and_filter.dart';
import 'package:employ_ease/res/components/common/tab_bar_contents.dart';
import 'package:employ_ease/res/components/homeView/job_card.dart';
import 'package:employ_ease/res/components/homeView/popular_job_card.dart';
import 'package:employ_ease/res/components/homeView/top_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List type = [
    "All",
    "Product Design",
    "Developer",
    "Data Analyst",
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color(0xffE3F0E9),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopAppBar(),
              const Gap(20),
              const SearchFieldAndFilter(hintText: "Search Job"),
              const Gap(20),
              SizedBox(
                height: 55,
                child: ListView.separated(
                    separatorBuilder: (context, index) => const Gap(10),
                    scrollDirection: Axis.horizontal,
                    itemCount: type.length,
                    itemBuilder: (context, index) => TabBarContents(
                          index: index,
                          title: type[index],
                        )),
              ),
              const Gap(20),
              SizedBox(
                height: size.height * .25,
                child: ListView.separated(
                  separatorBuilder: (context, index) => const Gap(10),
                  itemCount: 2,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => JobCard(index: index),
                ),
              ),
              const Gap(20),
              Text(
                "Popular Job",
                style: theme.textTheme.titleLarge!.copyWith(
                  color: theme.colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => const PopularJobCard(
                  imageUrl:
                      "https://m.media-amazon.com/images/I/51rttY7a+9L.png",
                  title: "Product Designer",
                  subTitle: "Spotify, Jakarta",
                  btnText: "Apply This Job",
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        activeColor: theme.colorScheme.primary,
        height: 70,
        icons: const [
          Icons.home_filled,
          Icons.document_scanner,
          Icons.messenger,
          Icons.person,
        ],
        activeIndex: 0,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) {},
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: theme.colorScheme.primary,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: theme.colorScheme.onPrimary,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
