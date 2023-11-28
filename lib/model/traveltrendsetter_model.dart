import 'package:flutter/material.dart';

class TravelTrendsetterWidget extends StatelessWidget {
  const TravelTrendsetterWidget({
    Key? key,
    required this.title,
    required this.socialMediaPlatform,
    required this.description,
    required this.backgroundColor,
  }) : super(key: key);

  final String title;
  final String socialMediaPlatform;
  final String description;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 339,
              height: 216,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: backgroundColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 185,
                    height: 238,
                    decoration: const BoxDecoration(color: Color(0xFF0F400E)),
                  )
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 87,
                  height: 34,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      'instagram',
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
                  width: 82,
                  height: 34,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEBFAFD),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text('facebook',
                        style: TextStyle(
                            color: Color(0xFF9498FF),
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                  ),
                )
              ],
            ),
            const SizedBox(height: 16),
            Text(
              description,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
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
      ],
    );
  }
}
