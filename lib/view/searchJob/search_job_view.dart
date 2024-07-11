import 'package:employ_ease/assets/icons/icon_asset.dart';
import 'package:employ_ease/assets/images/image_asset.dart';
import 'package:employ_ease/res/components/common/tab_bar_contents.dart';
import 'package:employ_ease/res/components/filter/filter.dart';
import 'package:employ_ease/res/components/searchJob/job_details_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchJobView extends StatefulWidget {
  const SearchJobView({super.key});

  @override
  State<SearchJobView> createState() => _SearchJobViewState();
}

class _SearchJobViewState extends State<SearchJobView> {
  List type = [
    "Jobs",
    "Companies",
    "Salary",
    "Job",
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color(0xffE3F0E9),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        backgroundColor: const Color(0xffE3F0E9),
        title: Text(
          "Confirmation",
          style: theme.textTheme.titleLarge!.copyWith(
            color: theme.colorScheme.onSurface,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Product Designer",
                      prefixIcon: const Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                const Gap(10),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      useSafeArea: true,
                      isScrollControlled: true,
                      builder: (context) => const Filter(),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary.withOpacity(.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      IconAsset.filter,
                      width: 30,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                )
              ],
            ),
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
                ),
              ),
            ),
            const Gap(10),
            Text(
              "32 Job Opportunity",
              style: theme.textTheme.labelLarge!.copyWith(
                color: theme.colorScheme.onSurface.withOpacity(.5),
              ),
            ),
            const Gap(20),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3,
              separatorBuilder: (context, index) => const Gap(10),
              itemBuilder: (context, index) => const JobDetailsCard(
                imageUrl: ImageAsset.jobLogo,
                jobName: "Product Designer",
                compnayName: "Tokopedia",
                location: "Jakartha",
                address: "Rp 12 Jt",
              ),
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
