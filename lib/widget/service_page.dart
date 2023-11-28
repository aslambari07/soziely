import 'package:flutter/material.dart';
import 'package:soziely/model/MyCustomCard.dart';
import 'package:soziely/widget/ourprojects_page.dart';

import '../resource/string_resource.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Our Services',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  StringResource.servicess,
                  style: TextStyle(fontSize: 46, fontWeight: FontWeight.w700),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'We have 26+ other services',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 13),
                  Container(
                    width: 244,
                    height: 67,
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
                          'Discover more',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 40),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 38.0,
              crossAxisSpacing: 38.0,
              mainAxisExtent: 350.0,
            ),
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) {
              final titles = [
                'Social media\nstrategy',
                'Content creation\n& curation',
                'Paid advertising\nand promotion',
                'Analytics\nand reporting',
                'Influencer\nmarketing',
                'Social media\nlistening',
              ];
              return MyCustomCard(
                number: (index + 01).toString().padLeft(2, '0'),
                title: titles[index],
                description:
                    'Tortor nisl elit pulvinar pellentesque\nlibero varius libero ullamcorper.',
                learnMoreText: 'Learn more...',
                cardColors: const [
                  Color(0xFFF5FDEB),
                  Color(0xFFEBECFD),
                  Color(0xFFEBFAFD),
                  Color(0xFFFDEBF6),
                  Color(0xFFFDEBEB),
                  Color(0xFFFDF4EB),
                ],
                index: index,
              );
            },
          ),
          const SizedBox(height: 110),
          // Don't just take our word for it:
          const OurProjects(),
        ],
      ),
    );
  }
}
