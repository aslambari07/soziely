import 'package:flutter/material.dart';
import 'package:soziely/model/traveltrendsetter_model.dart';

class OurProjects extends StatelessWidget {
  const OurProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 110),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Your Text Here',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Align(
            alignment: Alignment.topLeft,
            child: Text('Stay Ahead of the Game:',
                style: TextStyle(fontSize: 46, fontWeight: FontWeight.w700)),
          ),
          const SizedBox(height: 16),
          const Align(
            alignment: Alignment.topLeft,
            child: Text('See Our Most Recent and Innovative Projects',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          ),
          const SizedBox(height: 46),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(24),
                    width: 606,
                    height: 358,
                    decoration: BoxDecoration(
                      color: const Color(0xFFEBECFD),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 130,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        Container(
                          width: 130,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        Container(
                          width: 130,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        Container(
                          width: 137,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 37),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'E-commerce Boost',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 94,
                              height: 34,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFDEBF6),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  'advertising',
                                  style: TextStyle(
                                    color: Color(0xFFFF94D5),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              width: 160,
                              height: 34,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFDEBEB),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text('social media strategy',
                                    style: TextStyle(
                                        color: Color(0xFFFFC194),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 16),
                        const Text(
                            'Helping an online retail store increase website traffic and\nsales through targeted social media advertising.',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                        const SizedBox(height: 34),
                        Container(
                          width: 231,
                          height: 66,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFFA2D95E),
                            // image: const DecorationImage(
                            //   image: AssetImage(''),
                            //   fit: BoxFit.cover,
                            // ),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'View Case Study',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 48),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                ),
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  // List of titles
                  List<String> titles = [
                    'Travel Trendsetter',
                    'B2B Success',
                    'Fashion Forward',
                  ];
                  // List of descriptions
                  List<String> descriptions = [
                    'Developing a social media strategy for a\ntravel agency to increase bookings and\nengagement on Instagram and Facebook.',
                    'Creating a LinkedIn strategy for a B2B\ncompany to generate leads and improve\nbrand visibility.',
                    'Building a strong and visually stunning\nInstagram presence for a clothing brand\nto increase brand awareness and sales.',
                  ];
                  // List of colors
                  List<Color> colors = [
                    const Color(0xFFFDEBF6),
                    const Color(0xFFFDEBEB),
                    const Color(0xFFFDF4EB),
                  ];
                  return TravelTrendsetterWidget(
                    title: titles[index],
                    socialMediaPlatform: 'instagram',
                    description: descriptions[index],
                    backgroundColor: colors[index],
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
