import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_openui/ui/components/helper.dart';
import 'package:gap/gap.dart';

class Day1Page extends StatelessWidget {
  const Day1Page({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> kTabPages = [
      const DesignerTab(),
      const Center(child: Icon(Icons.category_rounded, size: 64.0)),
      const Center(child: Icon(Icons.notifications, size: 64.0)),
    ];

    final List<Tab> kTabs = [
      const Tab(
        child: Text('Designer'),
      ),
      const Tab(
        child: Text('Category'),
      ),
      const Tab(
        child: Text('Attention'),
      ),
    ];

    return DefaultTabController(
      length: kTabs.length,
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(color: Colors.white,),
          title: const Text(
            'Some Random Pinterest UI',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(gradient: purpleGradient, boxShadow: [
              BoxShadow(
                color: const Color(0xFFdc6bf5).withOpacity(0.7),
                offset: const Offset(0, 3),
                blurRadius: 12.0,
              ),
            ]),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              tooltip: 'Menu',
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            )
          ],
          bottom: TabBar(
            tabs: kTabs,
            indicatorColor: Colors.white,
            labelStyle: const TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
            unselectedLabelStyle: const TextStyle(
              color: Colors.white,
              fontSize: 14.0,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        body: TabBarView(
          children: kTabPages,
        ),
      ),
    );
  }
}

class DesignerTab extends StatelessWidget {
  const DesignerTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(20.0),
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (context, index) => const Gap(16.0),
      itemCount: homeCards.length,
      itemBuilder: (context, index) {
        final card = homeCards[index];
        return Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: card.gradient,
            boxShadow: [
              BoxShadow(
                color: card.shadowColor.withOpacity(0.7),
                offset: const Offset(0, 3),
                blurRadius: 12.0,
              )
            ],
          ),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Positioned(
                top: -30,
                right: -210,
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      gradient: card.gradient, shape: BoxShape.circle),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(card.image),
                        radius: 30,
                      ),
                    ),
                    const Gap(16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text(
                              card.name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 18.0,
                              ),
                            ),
                            subtitle: Text(
                              'Title: ${card.title}',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Gap(16.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                        text: card.popularity.toString(),
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w600)),
                                    const TextSpan(
                                        text: '\nPopularity',
                                        style: TextStyle(fontSize: 12.0))
                                  ],
                                  style: const TextStyle(color: Colors.white),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const Gap(16.0),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                        text: card.like.toString(),
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w600)),
                                    const TextSpan(
                                      text: '\nLike',
                                      style: TextStyle(fontSize: 12.0),
                                    )
                                  ],
                                  style: const TextStyle(color: Colors.white),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const Gap(16.0),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                        text: card.followed.toString(),
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w600)),
                                    const TextSpan(
                                      text: '\nFollowed',
                                      style: TextStyle(fontSize: 12.0),
                                    )
                                  ],
                                  style: const TextStyle(color: Colors.white),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_horiz_rounded,
                            color: Colors.white,
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: card.ranking.toString(),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  )),
                              const TextSpan(
                                  text: '\nRanking',
                                  style: TextStyle(fontSize: 13.0))
                            ],
                            style: const TextStyle(color: Colors.white),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class HomeCard {
  String image, name, title;
  int popularity, like, followed, ranking;
  LinearGradient gradient;
  Color shadowColor;

  HomeCard({
    required this.image,
    required this.name,
    required this.title,
    required this.popularity,
    required this.like,
    required this.followed,
    required this.ranking,
    required this.gradient,
    required this.shadowColor,
  });
}

List<HomeCard> homeCards = [
  HomeCard(
    image: "https://avatars.githubusercontent.com/u/69576717?v=4",
    name: "Joël Fah",
    title: "A designer out there",
    popularity: Random().nextInt(10000) + 500,
    like: Random().nextInt(10000) + 500,
    followed: Random().nextInt(10000) + 500,
    ranking: 1,
    gradient: blueGradient,
    shadowColor: const Color(0xFF7ca1f3).withOpacity(0.7),
  ),
  HomeCard(
    image:
    "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    name: "Lucy",
    title: "Growing up trouble",
    popularity: Random().nextInt(10000) + 500,
    like: Random().nextInt(10000) + 500,
    followed: Random().nextInt(10000) + 500,
    ranking: 2,
    gradient: orangeGradient,
    shadowColor: const Color(0xFFee9f5c).withOpacity(0.7),
  ),
  HomeCard(
    image:
    "https://images.pexels.com/photos/3799786/pexels-photo-3799786.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    name: "Jerry Cool West",
    title: "Sculptor's diary",
    popularity: Random().nextInt(10000) + 500,
    like: Random().nextInt(10000) + 500,
    followed: Random().nextInt(10000) + 500,
    ranking: 3,
    gradient: pinkGradient,
    shadowColor: const Color(0xFFe95874).withOpacity(0.7),
  ),
  HomeCard(
    image:
    "https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    name: "David Borg",
    title: "Flying wings",
    popularity: Random().nextInt(10000) + 500,
    like: Random().nextInt(10000) + 500,
    followed: Random().nextInt(10000) + 500,
    ranking: 4,
    gradient: purpleGradient,
    shadowColor: const Color(0xFFab4df1).withOpacity(0.7),
  ),
  HomeCard(
    image:
    "https://images.pexels.com/photos/936119/pexels-photo-936119.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    name: "Doriane Bourgelle",
    title: "Illustration of the girl",
    popularity: Random().nextInt(10000) + 500,
    like: Random().nextInt(10000) + 500,
    followed: Random().nextInt(10000) + 500,
    ranking: 4,
    gradient: greenGradient,
    shadowColor: const Color(0xFF68e1b8).withOpacity(0.7),
  ),
];
