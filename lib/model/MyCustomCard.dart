import 'package:flutter/material.dart';

class MyCustomCard extends StatelessWidget {
  final String number;
  final String title;
  final String description;
  final String learnMoreText;
  final List<Color> cardColors;
  final int index;

  const MyCustomCard({
    Key? key,
    required this.number,
    required this.title,
    required this.description,
    required this.learnMoreText,
    required this.cardColors,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,
      height: 350,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: cardColors[index % cardColors.length],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 26,
              top: 18,
              right: 26,
              bottom: 18,
            ),
            decoration: const ShapeDecoration(
              color: Color(0xFF030D03),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(12),
                ),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  number,
                  style: const TextStyle(
                    color: Color(0xFFF8F8F8),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            bottom: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        description,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        learnMoreText,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
