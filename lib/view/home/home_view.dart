  import 'package:employ_ease/assets/icons/icon_asset.dart';
import 'package:employ_ease/assets/images/image_asset.dart';
import 'package:employ_ease/view/jobDetails/job_details_view.dart';
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      "Let's Find a Job With Joobie",
                      style: theme.textTheme.titleLarge!.copyWith(
                        color: theme.colorScheme.onSurface,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(ImageAsset.profile),
                  ),
                ],
              ),
              const Gap(20),
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
                        hintText: "Search Job",
                        prefixIcon: const Icon(Icons.search),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  const Gap(10),
                  Container(
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
                  itemBuilder: (context, index) => Container(
                    height: 50,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color:
                          index == 0 ? theme.colorScheme.primary : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      type[index],
                      style: theme.textTheme.bodyLarge!.copyWith(
                          color: index == 0
                              ? theme.colorScheme.onPrimary
                              : theme.colorScheme.onSurface),
                    ),
                  ),
                ),
              ),
              const Gap(20),
              SizedBox(
                height: size.height * .25,
                child: ListView.separated(
                  separatorBuilder: (context, index) => const Gap(10),
                  itemCount: 2,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const JobDetailsView()));
                    },
                    child: Container(
                      width: size.width * .85,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: index == 0
                                ? const AssetImage(ImageAsset.bg)
                                : const NetworkImage(
                                    "https://i.pinimg.com/564x/90/70/69/907069fa2ccf55c17c3f898c41faca05.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const CircleAvatar(
                                backgroundImage: AssetImage(ImageAsset.jobLogo),
                                radius: 25,
                              ),
                              const Gap(10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Tokopedia",
                                    style: theme.textTheme.bodyLarge!.copyWith(
                                      color: theme.colorScheme.surface,
                                    ),
                                  ),
                                  Text(
                                    "Fulltime",
                                    style: theme.textTheme.labelLarge!.copyWith(
                                      color: theme.colorScheme.surface,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.onSurface
                                      .withOpacity(.35),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text(
                                  "+14 Applied",
                                  style: theme.textTheme.labelSmall!.copyWith(
                                    color: theme.colorScheme.surface,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Gap(10),
                          Text(
                            "Product Designer",
                            style: theme.textTheme.titleLarge!.copyWith(
                              color: theme.colorScheme.surface,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Jakarta, Indonesia",
                            style: theme.textTheme.labelSmall!.copyWith(
                              color: theme.colorScheme.surface,
                            ),
                          ),
                          const Gap(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color:
                                      theme.colorScheme.surface.withOpacity(.3),
                                ),
                                child: Text(
                                  'Ui Designer',
                                  style: theme.textTheme.labelSmall!.copyWith(
                                    color: theme.colorScheme.surface,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color:
                                      theme.colorScheme.surface.withOpacity(.3),
                                ),
                                child: Text(
                                  'Research',
                                  style: theme.textTheme.labelSmall!.copyWith(
                                    color: theme.colorScheme.surface,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color:
                                      theme.colorScheme.surface.withOpacity(.3),
                                ),
                                child: Text(
                                  'Product',
                                  style: theme.textTheme.labelSmall!.copyWith(
                                    color: theme.colorScheme.surface,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Gap(10),
                        ],
                      ),
                    ),
                  ),
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
              SizedBox(
                height: size.height * .2,
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.all(5),
                    width: size.width,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.network(
                              "https://m.media-amazon.com/images/I/51rttY7a+9L.png",
                              width: 50,
                              height: 50,
                            ),
                            const Gap(10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Product Manager",
                                  style: theme.textTheme.labelLarge!.copyWith(
                                    color: theme.colorScheme.onSurface,
                                  ),
                                ),
                                Text(
                                  "Spotify, jakarta",
                                  style: theme.textTheme.labelSmall!.copyWith(
                                    color: theme.colorScheme.onSurface
                                        .withOpacity(.5),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Gap(10),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.deepOrange,
                          ),
                          child: Text(
                            "Apply this job",
                            style: theme.textTheme.labelSmall!.copyWith(
                              color: theme.colorScheme.onSurface,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (value) {},
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.document_scanner), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
