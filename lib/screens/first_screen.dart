import 'package:flutter/material.dart';
import 'package:firebase_auth101/pages/pages.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({Key? key}) : super(key: key);

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  // declare and initizlize the page controller
  final PageController _pageController = PageController(initialPage: 0);

  // the index of the current page
  int _activePage = 0;

  final List<Widget> _pages = [
    const GetStarted(),
    const GetStart(),
     
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _activePage = page;
              });
            },
            itemCount: _pages.length,
            itemBuilder: (BuildContext context, int index) {
              return _pages[index % _pages.length];
            },
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 40,
            child: Container(
             
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                    _pages.length,
                        (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: InkWell(
                        onTap: () {
                          _pageController.animateToPage(index,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        },
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: _activePage == index
                              ? Color.fromARGB(255, 0, 36, 36)
                              : Colors.grey,
                        ),
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}