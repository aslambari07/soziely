import 'package:flutter/material.dart';
import 'package:soziely/util/footer.dart';
import '../resource/string_resource.dart';
import 'service_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  bool _showBottomNavigationBar = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      setState(() {
        _showBottomNavigationBar = true;
      });
    } else {
      setState(() {
        _showBottomNavigationBar = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 150),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Soziely',
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w700),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Home',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'About',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Service',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Contact Us',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Blog',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 168,
                  height: 44,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 3),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0xFFC6C6C6)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search..',
                              hintStyle: TextStyle(
                                color: Color(0xFFC6C6C6),
                                fontSize: 16,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.search,
                        color: Color(0xFFC6C6C6),
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 150, vertical: 50),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'SOCIAL MEDIA MARKETING AGENCY',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      StringResource.header1,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 64, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 32),
                    const Text(
                      StringResource.header2,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 40),
                    Container(
                      width: 244,
                      height: 67,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFA2D95E),
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
                    SizedBox(
                      height: 500,
                      child: Center(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            const SizedBox(height: 55),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 330,
                                  height: 350,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                const SizedBox(width: 25),
                                Container(
                                  width: 700,
                                  height: 350,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                const SizedBox(width: 25),
                                Container(
                                  width: 330,
                                  height: 350,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                const SizedBox(width: 25),
                                Container(
                                  width: 330,
                                  height: 350,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                const SizedBox(height: 33),
                                //folower
                                const SizedBox(height: 64),
                                //Garis
                                const SizedBox(height: 110),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const ServicePage(),
                    const SizedBox(height: 700),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _showBottomNavigationBar ? const FotterPage() : null,
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
