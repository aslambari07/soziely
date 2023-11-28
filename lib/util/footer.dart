import 'package:flutter/material.dart';

class FotterPage extends StatelessWidget {
  const FotterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1440,
      height: 466,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(color: Color(0xFF051605)),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 150, top: 326, right: 150),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 1640),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 0.50,
                                  color: Color(0xFFC6C6C6),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 34),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '© 2023 Soziely. All rights reserved.',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  'Designed by TokoTema',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 150,
              top: 110,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Soziely',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 200, right: 150),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Email
                Container(
                  width: 230,
                  height: 66,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(
                          color: Color(0xFFC6C6C6),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                // Sign Up
                Container(
                  width: 230,
                  height: 66,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFA2D95E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 150,
              top: 174,
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Unlock Your Business`s\nPotential with Our Social Media Solutions',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 150, top: 122, right: 150),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Stay Up-to-Date with the Latest Social Media\nStrategies and Insights',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.end,
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 150,
              top: 250,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Overview',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Features',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Pricing',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Careers',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Help',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Privacy',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
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
