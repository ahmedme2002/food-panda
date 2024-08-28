import 'package:appmenus/elmenus/presentation/widget/all_new_tab_bar.dart';
import 'package:appmenus/elmenus/presentation/widget/cricket_deals_tab_bar.dart';
import 'package:appmenus/elmenus/presentation/widget/popular_tab_bar.dart';
import 'package:appmenus/elmenus/presentation/widget/strong_pepsi_deals_tab_bar.dart';
import 'package:flutter/material.dart';

class ShopeScreen extends StatefulWidget {
  const ShopeScreen({super.key});

  @override
  State<ShopeScreen> createState() => _ShopeScreenState();
}

class _ShopeScreenState extends State<ShopeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;

  @override
  void initState() {
    _tabcontroller = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabcontroller.addListener(_handelTabSelection);
    super.initState();
  }

  void _handelTabSelection() {
    if (_tabcontroller.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabcontroller.dispose();
    super.dispose();
  }

//shop

  final List<String> categories = [
    "Popular",
    "Cricket Deals",
    "Strong Pepsi Deals",
    "All New"
  ];

  final List<Map<String, String>> popularItems = [
    {
      "title": "Cricket Deal 2",
      "price": "Rs. 549.00",
      "oldPrice": "Rs. 869.00",
      "image": "assets/images/cricket_deal_2.jpg"
    },
    {
      "title": "Chicken Fajita",
      "price": "from Rs. 785.00",
      "image": "assets/images/chicken_fajita.jpg"
    },
    {
      "title": "Chicken Tikka",
      "price": "from Rs. 785.00",
      "image": "assets/images/chicken_tikka.jpg"
    },
    {
      "title": "Chicken Teriyaki",
      "price": "from Rs. 840.00",
      "image": "assets/images/chicken_teriyaki.jpg"
    },
    {
      "title": "Roasted Chicken Breast",
      "price": "from Rs. 710.00",
      "image": "assets/images/roasted_chicken_breast.jpg"
    },
    {
      "title": "Chicken Tikka Salad",
      "price": "from Rs. 845.00",
      "image": "assets/images/chicken_tikka_salad.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          foregroundColor: const Color(0xFFFF2B85),
          title: const Column(
            children: [
              Text(
                "Delivery",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 17,
                ),
              ),
              Text(
                "15-30min",
                style: TextStyle(fontSize: 14),
              )
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share_sharp),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            )
          ],
        ),
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/subway_logo.jpg",
                        height: 70,
                      ),
                      const Text(
                        "Subway",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          '1.5km away | Rs. 99.00 Delivery | Rs. 249 Minimum Service free applies',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.5)),
                        ),
                      ),
                      const Text(
                        "More info",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xFFFF2B85),
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.star_border_purple500_outlined,
                            color: Color(0xFFFF2B85),
                            size: 30,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            "3.9",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            "1000+ratings",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                            ),
                          )
                        ],
                      ),
                      const Text(
                        "see reviews",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xFFFF2B85),
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            color: Color(0xFFFF2B85),
                            size: 30,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            " Delivery: 15-30 min",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                        ],
                      ),
                      Text(
                        "change",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/voucher_panda.png",
                        width: 40,
                        height: 40,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        " Available deals",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFF2B85).withOpacity(0.07),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/percentage_icon.png",
                              width: 25,
                              height: 25,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Rs.320 off",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFF2B85)),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Min. order Rs. 320. Valid for selected items Auto.applied",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TabBar(
                    tabAlignment: TabAlignment.start,
                    controller: _tabcontroller,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelColor: Colors.black,
                    labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                    labelColor: const Color(0xFFFF2B85),
                    indicatorColor: const Color(0xFFFF2B85),
                    indicatorWeight: 3,
                    indicatorPadding:
                        const EdgeInsets.symmetric(horizontal: 20),
                    tabs: const [
                      Tab(
                        text: "Popular",
                      ),
                      Tab(
                        text: "Cricket Deals",
                      ),
                      Tab(
                        text: "Strong Pepsi Deals",
                      ),
                      Tab(
                        text: "All New",
                      ),
                    ],
                  ),
                  Center(
                    child: [
                      PopularTabBar(),
                      CricketDealsTabBar(),
                      StrongPepsiDealsTabBar(),
                      AllNewTabBar(),
                    ][_tabcontroller.index],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
