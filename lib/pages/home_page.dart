import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek/datas/icons.dart';
import 'package:gojek/datas/news.dart';
import 'package:gojek/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 0,
        toolbarHeight: 71,
        title: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: green1,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text(
                  "Beranda",
                  style: semibold14.copyWith(color: green1),
                ),
              ),
              ...["Promo", "Pesanan", "Chat"].map(
                (title) => Flexible(
                  fit: FlexFit.loose,
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 12),
                    child: Text(
                      title,
                      style: semibold14.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 23, left: 15, right: 15),
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xffFAFAFA),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: const Color(0xffE8E8E8)),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/search.svg",
                            colorFilter:
                                ColorFilter.mode(dark1, BlendMode.srcIn),
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Cari layanan, makanan, & tujuan",
                            style: regular14.copyWith(color: dark3),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: Image.asset("assets/images/profile.jpg"),
                        ),
                        Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              width: 16,
                              height: 16,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: const Color(0xffd1e7ee),
                              ),
                              clipBehavior: Clip.hardEdge,
                              child: SvgPicture.asset(
                                "assets/icons/goclub.svg",
                                colorFilter:
                                    ColorFilter.mode(blue2, BlendMode.srcIn),
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Container(
                height: 96,
                decoration: BoxDecoration(
                  color: blue1,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 2,
                            height: 8,
                            decoration: BoxDecoration(
                                color: const Color(0xffBBBBBB),
                                borderRadius: BorderRadius.circular(1)),
                          ),
                          const SizedBox(height: 4),
                          Container(
                            width: 2,
                            height: 8,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(1)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Column(
                        children: [
                          Container(
                            width: 118,
                            height: 11,
                            decoration: const BoxDecoration(
                                color: Color(0xff9CCDDB),
                                borderRadius: BorderRadius.vertical(
                                    bottom: Radius.circular(8))),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 127,
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 6),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/gopay.png",
                                  height: 14,
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  "Rp12.379",
                                  style: bold16.copyWith(
                                    color: dark1,
                                  ),
                                ),
                                Text(
                                  "Klik & cek riwayat",
                                  style: semibold12_5.copyWith(color: green1),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    ...gopayIcons.map((icon) => Flexible(
                          fit: FlexFit.tight,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8)),
                                child: SvgPicture.asset(
                                  'assets/icons/${icon.icon}.svg',
                                  colorFilter:
                                      ColorFilter.mode(blue1, BlendMode.srcIn),
                                ),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Text(
                                icon.title,
                                style: semibold14.copyWith(color: Colors.white),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32, right: 27, left: 27),
              child: SizedBox(
                height: 157,
                child: GridView.count(
                  crossAxisCount: 4,
                  children: [
                    ...menuIcons.map(
                      (icon) => Container(
                        width: 40,
                        height: 40,
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: icon.icon != "goclub"
                                      ? icon.color!
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: SvgPicture.asset(
                                "assets/icons/${icon.icon}.svg",
                                colorFilter: icon.icon == "goclub"
                                    ? ColorFilter.mode(
                                        icon.color!, BlendMode.srcIn)
                                    : icon.icon == "other"
                                        ? ColorFilter.mode(
                                            dark2, BlendMode.srcIn)
                                        : const ColorFilter.mode(
                                            Colors.white, BlendMode.srcIn),
                              ),
                            ),
                            const SizedBox(
                              height: 9,
                            ),
                            Text(
                              icon.title,
                              style: regular12_5,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 19),
              child: Container(
                height: 65,
                width: double.infinity,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xffeaf3f6),
                        Colors.white,
                      ],
                    ),
                    border: Border.all(
                        color: const Color.fromARGB(96, 100, 100, 100),
                        width: 1),
                    borderRadius: BorderRadius.circular(15)),
                child: Stack(
                  children: [
                    Positioned(
                        top: 4,
                        child: SvgPicture.asset("assets/icons/dots.svg")),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            height: 40,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "117 XP lagi ada Harta Karun",
                                  style: semibold14,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  width: double.infinity,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                  height: 4,
                                  child: LinearProgressIndicator(
                                    backgroundColor: dark3,
                                    color: green1,
                                    value: .8,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          SvgPicture.asset(
                            "assets/icons/left.svg",
                            colorFilter:
                                ColorFilter.mode(dark2, BlendMode.srcIn),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Akses Cepat",
                    style: bold18,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black12),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        ...['', ''].map((e) => Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 17, vertical: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        decoration: BoxDecoration(
                                            color: green2,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: SvgPicture.asset(
                                            "assets/icons/goride.svg"),
                                      ),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      Text(
                                        "Pintu masuk motor, MNC Land",
                                        style: regular14,
                                      ),
                                    ],
                                  ),
                                  SvgPicture.asset(
                                    "assets/icons/left.svg",
                                    width: 18,
                                    height: 18,
                                    color: dark1,
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/gopaylater.png",
                    height: 14,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        "Lebih hemat pake GoPayLater",
                        style: bold16,
                      ),
                      Image.asset(
                        "assets/images/star-struck.png",
                        height: 16,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Yuk, belanja di Tokopedia pake GoPay Later dan nikmatin cashback-nya~",
                    style: regular14,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ...news.map(
                    (news) => Container(
                      margin: const EdgeInsets.only(bottom: 24),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black12),
                          borderRadius: BorderRadius.circular(15)),
                      clipBehavior: Clip.hardEdge,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/${news.image}",
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      news.title,
                                      style: bold16,
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Image.asset(
                                      "assets/images/winking-face.png",
                                      width: 16,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  news.description,
                                  style: regular14.copyWith(color: dark3),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
