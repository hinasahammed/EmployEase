import 'package:employ_ease/assets/icons/icon_asset.dart';
import 'package:employ_ease/assets/images/image_asset.dart';
import 'package:employ_ease/res/components/common/tab_bar_contents.dart';
import 'package:employ_ease/res/components/filter.dart';
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
      body: Padding(
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
            Expanded(
              child: ListView.separated(
                itemCount: 3,
                separatorBuilder: (context, index) => const Gap(10),
                itemBuilder: (context, index) => Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: theme.colorScheme.primary.withOpacity(.3),
                            ),
                            child: Image.asset(
                              ImageAsset.jobLogo,
                              width: 30,
                            ),
                          ),
                          const Gap(10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Product Designer",
                                style: theme.textTheme.bodyLarge!.copyWith(
                                  color: theme.colorScheme.onSurface,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Tokopedia",
                                style: theme.textTheme.labelLarge!.copyWith(
                                  color: theme.colorScheme.onSurface
                                      .withOpacity(.5),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Icon(Icons.bookmark_outline)
                        ],
                      ),
                      const Gap(20),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: theme.colorScheme.onSurface.withOpacity(.4),
                          ),
                          const Gap(5),
                          Text(
                            "Jakartha",
                            style: theme.textTheme.labelSmall!.copyWith(
                              color:
                                  theme.colorScheme.onSurface.withOpacity(.4),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "Rp 12 Jt",
                            style: theme.textTheme.labelSmall!.copyWith(
                              color: theme.colorScheme.onSurface,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "/bin",
                            style: theme.textTheme.labelSmall!.copyWith(
                              color:
                                  theme.colorScheme.onSurface.withOpacity(.4),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Gap(20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: theme.colorScheme.primary.withOpacity(.3),
                        ),
                        child: Image.network(
                          "https://www.zestbrains.com/assets/images/ui-ux-design/ui-ux-design.png",
                          width: 30,
                        ),
                      ),
                      const Gap(10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Product Designer",
                            style: theme.textTheme.bodyLarge!.copyWith(
                              color: theme.colorScheme.onSurface,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Tokopedia",
                            style: theme.textTheme.labelLarge!.copyWith(
                              color:
                                  theme.colorScheme.onSurface.withOpacity(.5),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Icon(Icons.bookmark_outline)
                    ],
                  ),
                  const Gap(20),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: theme.colorScheme.onSurface.withOpacity(.4),
                      ),
                      const Gap(5),
                      Text(
                        "Jakartha",
                        style: theme.textTheme.labelSmall!.copyWith(
                          color: theme.colorScheme.onSurface.withOpacity(.4),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "Rp 12 Jt",
                        style: theme.textTheme.labelSmall!.copyWith(
                          color: theme.colorScheme.onSurface,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "/bin",
                        style: theme.textTheme.labelSmall!.copyWith(
                          color: theme.colorScheme.onSurface.withOpacity(.4),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Gap(20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: theme.colorScheme.primary.withOpacity(.3),
                        ),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNZjy7NAyAyKVnHZBXhnVueqC9dtpGHZK-0w&s",
                          width: 30,
                        ),
                      ),
                      const Gap(10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Product Designer",
                            style: theme.textTheme.bodyLarge!.copyWith(
                              color: theme.colorScheme.onSurface,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Tokopedia",
                            style: theme.textTheme.labelLarge!.copyWith(
                              color:
                                  theme.colorScheme.onSurface.withOpacity(.5),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Icon(Icons.bookmark_outline)
                    ],
                  ),
                  const Gap(20),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: theme.colorScheme.onSurface.withOpacity(.4),
                      ),
                      const Gap(5),
                      Text(
                        "Jakartha",
                        style: theme.textTheme.labelSmall!.copyWith(
                          color: theme.colorScheme.onSurface.withOpacity(.4),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "Rp 12 Jt",
                        style: theme.textTheme.labelSmall!.copyWith(
                          color: theme.colorScheme.onSurface,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "/bin",
                        style: theme.textTheme.labelSmall!.copyWith(
                          color: theme.colorScheme.onSurface.withOpacity(.4),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
