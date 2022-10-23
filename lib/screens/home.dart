import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:movie_app/movie%20data/movie_data.dart';
import 'package:movie_app/screens/detail_page.dart';
import 'package:movie_app/widgets/smalltext.dart';

import '../widgets/category_tag.dart';
import '../widgets/largetext.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  final int _currentPage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _currentPage,
      viewportFraction: 0.62,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1D2031),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/b....png"), fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LargeText(
                            text: 'Holla, Vally',
                            fontWeight: FontWeight.w900,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          SmallText(
                            text: 'Let\'s discover your favorite movie',
                            fontsize: 14.0,
                            color: const Color(0xffAAAAAA),
                          )
                        ],
                      ),
                      Image.asset(
                        "images/profilepicture.png",
                        scale: 2,
                      )
                    ],
                  ),
                ),

                //search bar

                const SizedBox(
                  height: 36,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: const Color(0xff212438),
                              borderRadius: BorderRadius.circular(15),
                            ),

                            //

                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 15,
                                ),
                                const Icon(
                                  IconlyLight.search,
                                  color: Color(0xffBABABE),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                SmallText(
                                  text: 'Search Movies',
                                  color: const Color(0xffAAAAAA),
                                )
                              ],
                            ),
                          ),
                        ),

                        //

                        const SizedBox(width: 16),

                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: const Color(0xff212438),
                            borderRadius: BorderRadius.circular(15),
                          ),

                          //

                          child: Stack(
                            children: [
                              const Positioned(
                                top: 18,
                                left: 18,
                                child: Icon(
                                  Iconsax.setting_5,
                                  color: Colors.white,
                                ),
                              ),

                              //

                              Positioned(
                                top: 6,
                                right: 10,
                                child: Container(
                                  height: 16,
                                  width: 16,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff6B33D6),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Center(
                                    child: SmallText(
                                      text: '4',
                                      fontsize: 10.0,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                //
                const SizedBox(
                  height: 38,
                ),

                //

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    children: [
                      SmallText(
                        text: 'Featured',
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      SmallText(
                        text: 'Movies',
                        fontWeight: FontWeight.normal,
                      )
                    ],
                  ),
                ),

                //

                const SizedBox(
                  height: 28,
                ),

                //

                AspectRatio(
                  aspectRatio: 1.4,
                  child: PageView.builder(
                    itemCount: moviedata.length,
                    //  physics: const ClampingScrollPhysics(),
                    controller: _pageController,
                    itemBuilder: (context, index) {
                      return carouselView(index);
                    },
                  ),
                ),

                //

                const SizedBox(height: 21),

                //

                GestureDetector(
                  onTap: (() {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: ((context) => const DetailsPage()),
                      ),
                    );
                  }),
                  child: Container(
                    width: 102,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xff6832D1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: SmallText(
                        text: 'Buy tickets',
                        fontsize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                //

                const SizedBox(height: 21),

                //

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SmallText(
                            text: 'Movie',
                            fontWeight: FontWeight.bold,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          SmallText(
                            text: 'Categories',
                            fontWeight: FontWeight.normal,
                          )
                        ],
                      ),
                      SmallText(
                        text: 'See all',
                        fontsize: 13,
                        color: const Color(0xffAAAAAA),
                      )
                    ],
                  ),
                ),

                //

                const SizedBox(height: 20),

                Container(
                  // margin: EdgeInsets.only(left: 20),
                  height: 45,
                  width: double.maxFinite,

                  //

                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      //tags
                      const SizedBox(width: 24),
                      categoryTag(
                        icon: '🔥',
                        text: 'Action',
                      ),

                      categoryTag(
                        icon: '😍',
                        text: 'Romance',
                      ),

                      categoryTag(
                        icon: '😱',
                        text: 'Horror',
                      ),
                      categoryTag(
                        icon: '🤣',
                        text: 'Comedy',
                      ),
                      categoryTag(
                        icon: '🦾',
                        text: 'Sci-fi',
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      //bottom nav

      bottomNavigationBar: BottomNavigationBar(
        //onTap: onTap,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xff1D2031),
        //currentIndex: currentIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color(0xff7E8088),
        showUnselectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        elevation: 0,

        items: [
          BottomNavigationBarItem(
            label: (''),
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 0.0, top: 22),
              child: Column(
                children: [
                  const Icon(IconlyBold.home),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  )
                ],
              ),
            ),
          ),

          //

          const BottomNavigationBarItem(
            label: '',
            icon: Padding(
              padding: EdgeInsets.only(bottom: 2.0, top: 8),
              child: Icon(Iconsax.discover),
            ),
          ),

          const BottomNavigationBarItem(
            label: '',
            icon: Padding(
              padding: EdgeInsets.only(bottom: 2.0, top: 8),
              child: Icon(
                Iconsax.ticket,
                size: 22,
              ),
            ),
          ),

          //

          const BottomNavigationBarItem(
            label: '',
            icon: Padding(
              padding: EdgeInsets.only(bottom: 2.0, top: 8),
              child: Icon(IconlyLight.profile),
            ),
          ),
        ],
      ),
    );
  }

  //

  Widget carouselView(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 0.0;
        if (_pageController.position.haveDimensions) {
          value = index.toDouble() - (_pageController.page ?? 0);
          value = (value * 0.022).clamp(-1, 1);
        }
        return Transform.rotate(
          angle: pi * value,
          child: carouselCard(moviedata[index]),
        );

        //
      },
    );
  }

  Widget carouselCard(DataModel data) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Hero(
              tag: "topgun",
              child: Image.asset(data.imageName),
            ),
            // Container(
            //   //width: 220,
            //   decoration: BoxDecoration(
            //     //color: Colors.white,
            //     // borderRadius: BorderRadius.circular(0),
            //     image: DecorationImage(
            //       image: AssetImage(
            //         data.imageName,
            //       ),
            //       fit: BoxFit.fill,
            //     ),
            //   ),
            // ),
          ),
        )
      ],
    );
  }
}


//
