import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: const Color(0xFF0F0F0F),
        ),
        bottomAppBarTheme: const BottomAppBarTheme(
          color: Color(0xFF0F0F0F),
        ),
        scaffoldBackgroundColor: const Color(0xFF0F0F0F),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0F0F0F),
          centerTitle: false,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0, //스크롤할때 0으로 하면 색깔 변경 안됨
          title: Row(
            children: [
              Image.asset(
                'assets/images/youtube_logo.png',
                width: 86,
              ),
              const Spacer(),
              const Icon(
                Icons.cast,
                color: Colors.white,
              ),
              const SizedBox(width: 18),
              const Icon(
                Icons.notifications_none,
                color: Colors.white,
              ),
              const SizedBox(width: 18),
              const Icon(
                Icons.search,
                color: Colors.white,
              ),
              const SizedBox(width: 18),
              ClipOval(
                //동그랗게만 만들어주는거임
                child: Container(
                  width: 24,
                  height: 24,
                  color: const Color(0XFFF5F5F5),
                  child: const Icon(
                    Icons.person_3,
                    size: 16,
                    color: Color(0XFFD1D5DB),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  color: const Color(0xFF0F0F0F),
                  width: double.infinity,
                  height: 48,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        height: 32,
                        decoration: BoxDecoration(
                            color: const Color(0xFF272727),
                            borderRadius: BorderRadius.circular(4)),
                        child: const Icon(
                          Icons.explore_outlined,
                          size: 24,
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 32,
                        decoration: BoxDecoration(
                            color: const Color(0xFF272727),
                            borderRadius: BorderRadius.circular(4)),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'All',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Container(
                        width: 108,
                        height: 32,
                        decoration: BoxDecoration(
                            color: const Color(0xFF272727),
                            borderRadius: BorderRadius.circular(4)),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Under 10 min',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Container(
                        width: 62,
                        height: 32,
                        decoration: BoxDecoration(
                            color: const Color(0xFF272727),
                            borderRadius: BorderRadius.circular(4)),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Music',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Container(
                        width: 68,
                        height: 32,
                        decoration: BoxDecoration(
                            color: const Color(0xFF272727),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Manga',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 210,
                          child: Image.network(
                            'https://post-phinf.pstatic.net/MjAyMTA2MTRfMjc4/MDAxNjIzNjY1MDU2MDg2.WMMx-rU9xp3Jx7w4v7H5IHgIVcMgCf55wl-ipn9_1Xwg.2I2EwHiLlG5zNkuE6cyqW6TehOqdrmkWxE3gjDFIqcgg.JPEG/%EB%B9%85%EC%84%9C%28%EA%B7%B8%EB%9E%98%ED%94%BD%29-%EB%9D%BC%EC%9D%B4%ED%8A%B8.jpg?type=w1200',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          //fixed같은 친구
                          bottom: 8,
                          right: 8,
                          child: Container(
                            decoration: ShapeDecoration(
                              color: const Color(0xCC0F0F0F),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                left: 8,
                                right: 8,
                                top: 4,
                                bottom: 4,
                              ),
                              child: Text(
                                '12:40',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 12, bottom: 24, left: 12, right: 8),
                      child: Row(
                        children: [
                          ClipOval(
                            //동그랗게만 만들어주는거임
                            child: Container(
                              width: 28,
                              height: 28,
                              color: const Color(0XFFF5F5F5),
                              child: const Icon(
                                Icons.person_3,
                                size: 20,
                                color: Color(0XFFD1D5DB),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 276,
                                child: Text(
                                  'Config 2022 Opening Keynote - Dylan Field',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Text(
                                'Figma · 437K views ·7 days ago',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.more_vert,
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 210,
                          child: Image.network(
                            'https://www.shutterstock.com/image-illustration/abstract-geometric-fluid-red-orange-600nw-1416337598.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          //fixed같은 친구
                          bottom: 8,
                          right: 8,
                          child: Container(
                            decoration: ShapeDecoration(
                              color: const Color(0xCC0F0F0F),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                left: 8,
                                right: 8,
                                top: 4,
                                bottom: 4,
                              ),
                              child: Text(
                                '12:40',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 12, bottom: 24, left: 12, right: 8),
                      child: Row(
                        children: [
                          ClipOval(
                            //동그랗게만 만들어주는거임
                            child: Container(
                              width: 28,
                              height: 28,
                              color: const Color(0XFFF5F5F5),
                              child: const Icon(
                                Icons.person_3,
                                size: 20,
                                color: Color(0XFFD1D5DB),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 276,
                                child: Text(
                                  'Config 2022 Opening Keynote - Dylan Field',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Text(
                                'Figma · 437K views ·7 days ago',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.more_vert,
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: 40,
                    child: Image.asset(
                      'assets/images/shorts_logo.png',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 8),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 158,
                          height: 264,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                child: SizedBox(
                                  width: 158,
                                  height: 264,
                                  child: Image.network('https://svrforum.com/files/attach/images/2023/02/18/f6ec90cea8e62801442419e90b870dbf.jpg', fit: BoxFit.cover,),
                                ),
                              ),
                              const Positioned(
                                right: 4,
                                top: 8,
                                child: Stack(
                                  children: [
                                    Icon(Icons.more_vert, size: 16,),
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    child: const Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          child: Text(
                                            'Config 2022',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '166K Views',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 12,),
                        Container(
                          width: 158,
                          height: 264,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 158,
                                  height: 264,
                                  child: Image.network('https://e1.pxfuel.com/desktop-wallpaper/917/349/desktop-wallpaper-macos-monterey-mac-os.jpg', fit: BoxFit.cover,),
                                ),
                              ),
                              const Positioned(
                                right: 4,
                                top: 8,
                                child: Stack(
                                  children: [
                                    Icon(Icons.more_vert, size: 16,),
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    child: const Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          child: Text(
                                            'Config 2022',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '166K Views',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 12,),
                        Container(
                          width: 158,
                          height: 264,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 158,
                                  height: 264,
                                  child: Image.network('https://images.saymedia-content.com/.image/ar_3:2%2Cc_limit%2Ccs_srgb%2Cfl_progressive%2Cq_auto:eco%2Cw_700/MTkyNjYzMTEwNjU4Njk2NjI4/aesthetic-mac-wallpapers.jpg', fit: BoxFit.cover,),
                                ),
                              ),
                              const Positioned(
                                right: 4,
                                top: 8,
                                child: Stack(
                                  children: [
                                    Icon(Icons.more_vert, size: 16,),
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    child: const Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          child: Text(
                                            'Config 2022',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '166K Views',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 12,),
                        Container(
                          width: 158,
                          height: 264,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 158,
                                  height: 264,
                                  child: Image.network('https://e0.pxfuel.com/wallpapers/643/378/desktop-wallpaper-colorful-waves-flow-for-macbook-pro.jpg', fit: BoxFit.cover,),
                                ),
                              ),
                              Positioned(
                                right: 4,
                                top: 8,
                                child: Stack(
                                  children: [
                                    Container(
                                      child: const Icon(Icons.more_vert, size: 16,),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    child: const Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          child: Text(
                                            'Config 2022',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '166K Views',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24,),
                Column(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 210,
                          child: Image.network(
                            'https://e0.pxfuel.com/wallpapers/643/378/desktop-wallpaper-colorful-waves-flow-for-macbook-pro.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          //fixed같은 친구
                          bottom: 8,
                          right: 8,
                          child: Container(
                            decoration: ShapeDecoration(
                              color: const Color(0xCC0F0F0F),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                left: 8,
                                right: 8,
                                top: 4,
                                bottom: 4,
                              ),
                              child: Text(
                                '12:40',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 12, bottom: 24, left: 12, right: 8),
                      child: Row(
                        children: [
                          ClipOval(
                            //동그랗게만 만들어주는거임
                            child: Container(
                              width: 28,
                              height: 28,
                              color: const Color(0XFFF5F5F5),
                              child: const Icon(
                                Icons.person_3,
                                size: 20,
                                color: Color(0XFFD1D5DB),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 276,
                                child: Text(
                                  'Config 2022 Opening Keynote - Dylan Field',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Text(
                                'Figma · 437K views ·7 days ago',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.more_vert,
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: SizedBox(
            height: 48.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 1,
                  child: IconButton(
                    icon: const Column(
                      children: [
                        Icon(
                          Icons.home_filled,
                          color: Colors.white,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    icon: const Column(
                      children: [
                        Icon(
                          Icons.play_circle_outline,
                          color: Colors.white,
                        ),
                        Text(
                          'Shorts',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    icon: const Icon(
                      Icons.add_circle_outline,
                      color: Colors.white,
                      size: 38,
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    icon: const Column(
                      children: [
                        Icon(
                          Icons.subscriptions_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          'My List',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    icon: const Column(
                      children: [
                        Icon(
                          Icons.video_library_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          'Library',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
