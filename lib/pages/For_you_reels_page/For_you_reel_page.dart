import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tap_tock_shop/pages/messages/all_messages_page/all_messages_page.dart';


class ForYouReelsPageView extends StatefulWidget {
  const ForYouReelsPageView({super.key});

  static const pageName = 'HomePageView';

  @override
  State<ForYouReelsPageView> createState() => _ForYouReelsPageViewState();
}

class _ForYouReelsPageViewState extends State<ForYouReelsPageView> {
  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Scaffold(
        backgroundColor: Colors.black,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orange,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(360)),
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 5.0,
          shape: const CircularNotchedRectangle(),
          height: height * 0.09,
          color: const Color.fromARGB(255, 39, 39, 39),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.get_app)),
              IconButton(
                color: Colors.white,
                onPressed: () {},
                icon: const Icon(Icons.category_rounded),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AllMessagesPage(),
                        ));
                  },
                  icon: const Icon(
                    Icons.message_outlined,
                    color: Colors.white,
                  )),
              const Icon(
                Icons.person,
                color: Colors.white,
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: width * 0.03,
                    height: height * 0.08,
                  ),
                  const Text(
                    'Following',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Container(
                    height: height * 0.04,
                    width: width * 0.007,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                      child: Container(
                          height: height * 0.05,
                          width: width * 0.2,
                          decoration: const BoxDecoration(
                              color: Colors.black26,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(60))),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 9, left: 12),
                            child: Text(
                              'For You',
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
