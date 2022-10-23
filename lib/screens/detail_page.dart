import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:movie_app/widgets/largetext.dart';

import '../widgets/smalltext.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/bg2.png"), fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Iconsax.arrow_left_2,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
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
                          text: 'Details',
                          fontWeight: FontWeight.normal,
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    )
                  ],
                ),
              ),

              //

              const SizedBox(height: 38),

              Hero(
                tag: "topgun",
                child: Image.asset(
                  "images/movie1L.png",
                  scale: 2,
                ),
              ),

              const SizedBox(height: 24),

              //

              LargeText(
                text: "Top Gun Maverick",
                fontsize: 25.0,
                fontWeight: FontWeight.w900,
              ),

              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 65),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallText(
                      text: '2020',
                      fontsize: 14,
                      color: const Color(0xffAAAAAA),
                    ),
                    Container(
                      height: 6,
                      width: 6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffC4C4C4)),
                    ),
                    SmallText(
                      text: 'Action, Adventure',
                      fontsize: 14,
                      color: const Color(0xffAAAAAA),
                    ),
                    Container(
                      height: 6,
                      width: 6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffC4C4C4)),
                    ),
                    SmallText(
                      text: '2h 11m',
                      fontsize: 14,
                      color: const Color(0xffAAAAAA),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              Image.asset(
                "images/rating.png",
                scale: 2,
              ),

              const SizedBox(height: 20),

              Expanded(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Positioned(
                        top: 0,
                        child: SizedBox(
                          width: 314,
                          child: SmallText(
                            text:
                                "After more than 30 years of service as one of the Navy's top aviators, Pete 'Maverick' Mitchell is where he belongs, pushing the envelope as a courageous test pilot and dodging the advancement in rank that would ground him. Training a detachment of graduates for a special assignment, Maverick must confront the ghosts of his past and his deepest fears,",
                            color: const Color(0xffAAAAAA),
                            height: 1.5,
                            fontsize: 14,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Image.asset(
                        "images/fade.png",
                        scale: 2,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Positioned(
                        bottom: 0,
                        child: Image.asset(
                          "images/button.png",
                          scale: 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
