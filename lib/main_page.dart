import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube/widgets/story_widget.dart';
import 'package:youtube/widgets/video_widget.dart';

List<String> categoryList = [
  'Mixes',
  'Music',
  'Graphic',
  'Game',
  'Sports',
];

List<String> nickNameList = [
  'Anvil',
  'Snow White',
  'Pansy',
  'Double Bubble',
  'Braveheart',
  'Dork',
  'Cinnamon',
  'Cannoli',
  "Sweet 'n Sour",
  'Chip',
];

List<String> titleList = [
  'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
  "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
  "when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  "It has survived not only five centuries,",
  "but also the leap into electronic typesetting, remaining essentially unchanged.",
  "It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,",
  "and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  "Contrary to popular belief, Lorem Ipsum is not simply random text.",
  "It has roots in a piece of classical Latin literature from 45 BC,",
  "a Latin professor at Hampden-Sydney College in Virginia,",
];

List<String> storyList = [
  'of the printing and typesetting industry',
  "ever since the 1500s,",
  "when an unknown printer specimen book.",
  "It has five centuries,",
  "but also the remaining essentially unchanged.",
  "It was Letraset sheets containing Lorem Ipsum passages,",
  "and more recently with desktop versions of Lorem Ipsum.",
  "Contrary to popular belief, random text.",
  "classical Latin literature from 45 BC,",
  "professor College in Virginia,",
];

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shadowColor: Theme.of(context).colorScheme.secondary,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 14.0),
          child: SvgPicture.asset('asset/icons/logo.svg'),
        ),
        leadingWidth: 114,
        actions: [
          SvgPicture.asset(
            'asset/icons/device.svg',
            width: 25,
          ),
          const SizedBox(
            width: 15,
          ),
          const Icon(
            CupertinoIcons.bell,
            color: Colors.black,
          ),
          const SizedBox(
            width: 15,
          ),
          const Icon(
            CupertinoIcons.search,
            color: Colors.black,
          ),
          const SizedBox(
            width: 15,
          ),
          const CircleAvatar(
            radius: 13,
            backgroundImage:
                CachedNetworkImageProvider('https://picsum.photos/100'),
          ),
          const SizedBox(
            width: 14,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 14,
                        bottom: 14,
                      ),
                      child: SizedBox(
                        height: 30,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 5,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: const [
                                    Icon(
                                      CupertinoIcons.compass,
                                      size: 16,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Explore',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5.0, horizontal: 10),
                                child: VerticalDivider(
                                  thickness: 2.5,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 11, vertical: 7),
                                margin: const EdgeInsets.only(right: 2),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF3B3B3B),
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    color: const Color(0xFFE1E1E1),
                                    width: 1.5,
                                  ),
                                ),
                                child: const Text(
                                  'All',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              ...List.generate(
                                categoryList.length,
                                (index) => Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 11, vertical: 7),
                                  margin: const EdgeInsets.only(right: 2),
                                  decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                      color: const Color(0xFFE1E1E1),
                                      width: 1.5,
                                    ),
                                  ),
                                  child: Text(
                                    categoryList[index],
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    VideoWidget(
                      index: 0,
                      title: titleList[0],
                      nickName: nickNameList[0],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Theme.of(context).colorScheme.secondary,
                      height: 5,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 14,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'asset/icons/shorts.png',
                                width: 20,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Shorts',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 220,
                          width: double.infinity,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: storyList.length,
                              itemBuilder: (context, index) {
                                return StoryWidget(
                                    index: index, title: storyList[index]);
                              }),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          color: Theme.of(context).colorScheme.secondary,
                          height: 5,
                        ),
                        ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: titleList.length - 1,
                            itemBuilder: (context, index) {
                              return VideoWidget(
                                index: index + 1,
                                title: titleList[index + 1],
                                nickName: nickNameList[index + 1],
                              );
                            }),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
              ),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset(
                          'asset/icons/home.png',
                          width: 20,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text(
                          'Home',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset(
                          'asset/icons/shorts_black.png',
                          width: 20,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text(
                          'Shorts',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(
                            CupertinoIcons.plus,
                            size: 35,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          'asset/icons/subscription.svg',
                          width: 20,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text(
                          'Subscription',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          'asset/icons/library.svg',
                          width: 20,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text(
                          'Library',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
