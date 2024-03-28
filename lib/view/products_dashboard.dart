import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app_new/helpers/assets_strings.dart';

class ProductsDashboard extends StatefulWidget {
  const ProductsDashboard({super.key});

  @override
  State<ProductsDashboard> createState() => _ProductsDashboardState();
}

class _ProductsDashboardState extends State<ProductsDashboard> {
  Widget catalogueWidget() {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Catalogue",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 20),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Text(
                        "View All",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontSize: 15),
                      ),
                    ),
                    SvgPicture.asset(AssetStrings.viewAllIcon)
                  ],
                )
              ],
            ),
          ),
        ),
        GridView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: 6,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, childAspectRatio: 1.2),
            itemBuilder: (context, index) {
              return Stack(
                fit: StackFit.expand,
                alignment: Alignment.bottomCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        fit: BoxFit.cover,
                        AssetStrings.smallTilesSaree,
                        height: MediaQuery.of(context).size.width / 4.5,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width / 3.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: const Border(
                                top: BorderSide(
                                    width: 1.5,
                                    style: BorderStyle.solid,
                                    color: Colors.white)),
                            color: const Color(0xFF722ED1)),
                        child: Center(
                            child: Text(
                          "Catalogue",
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 15),
                        )),
                      ),
                    ),
                  )
                ],
              );
            }),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget borderSareeWidget() {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Border Saree",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 20),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Text(
                        "View All",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontSize: 15),
                      ),
                    ),
                    SvgPicture.asset(AssetStrings.viewAllIcon)
                  ],
                )
              ],
            ),
          ),
        ),
        GridView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: 4,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.75),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFFF9F9F9),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              fit: BoxFit.fill,
                              AssetStrings.pinkSaree,
                            ),
                          ),
                          Positioned(
                              right: 7.5,
                              top: 7.5,
                              child: index.isEven
                                  ? SvgPicture.asset(
                                      AssetStrings.favouriteIcon,
                                    )
                                  : SvgPicture.asset(
                                      AssetStrings.filledHeartIcon,
                                    ))
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: const Border(
                              top: BorderSide(
                                  width: 1.5,
                                  style: BorderStyle.solid,
                                  color: Colors.white)),
                          color: const Color(0xFFF9F9F9),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Vishal Prints Turquoise Blue Chiffon Saree With Foil Print",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFF2709C5),
                                        fontSize: 16),
                                maxLines: 1,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Rs. 1499",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge!
                                        .copyWith(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                            fontSize: 17),
                                    maxLines: 1,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "Rs. 1599",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge!
                                        .copyWith(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xFF6D6D78),
                                            fontSize: 16),
                                    maxLines: 1,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "1 set (24 Pieces)",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFFE31E24),
                                        fontSize: 16),
                                maxLines: 1,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget digitalPrintSareeWidget() {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Digital Print Saree",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 20),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Text(
                        "View All",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontSize: 15),
                      ),
                    ),
                    SvgPicture.asset(AssetStrings.viewAllIcon)
                  ],
                )
              ],
            ),
          ),
        ),
        GridView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: 4,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.75),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFFF9F9F9),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              fit: BoxFit.fill,
                              AssetStrings.pinkSaree,
                            ),
                          ),
                          Positioned(
                              right: 7.5,
                              top: 7.5,
                              child: index.isOdd
                                  ? SvgPicture.asset(
                                      AssetStrings.favouriteIcon,
                                    )
                                  : SvgPicture.asset(
                                      AssetStrings.filledHeartIcon,
                                    ))
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: const Border(
                              top: BorderSide(
                                  width: 1.5,
                                  style: BorderStyle.solid,
                                  color: Colors.white)),
                          color: const Color(0xFFF9F9F9),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Vishal Prints Turquoise Blue Chiffon Saree With Foil Print",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFF2709C5),
                                        fontSize: 16),
                                maxLines: 1,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Rs. 1499",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge!
                                        .copyWith(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                            fontSize: 17),
                                    maxLines: 1,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "Rs. 1599",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge!
                                        .copyWith(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xFF6D6D78),
                                            fontSize: 16),
                                    maxLines: 1,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "1 set (24 Pieces)",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFFE31E24),
                                        fontSize: 16),
                                maxLines: 1,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget printedSareeWidget() {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Printed Saree",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 20),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Text(
                        "View All",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontSize: 15),
                      ),
                    ),
                    SvgPicture.asset(AssetStrings.viewAllIcon)
                  ],
                )
              ],
            ),
          ),
        ),
        GridView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: 4,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.75),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFFF9F9F9),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              fit: BoxFit.fill,
                              AssetStrings.pinkSaree,
                            ),
                          ),
                          Positioned(
                              right: 7.5,
                              top: 7.5,
                              child:
                                  SvgPicture.asset(AssetStrings.favouriteIcon))
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: const Border(
                              top: BorderSide(
                                  width: 1.5,
                                  style: BorderStyle.solid,
                                  color: Colors.white)),
                          color: const Color(0xFFF9F9F9),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Vishal Prints Turquoise Blue Chiffon Saree With Foil Print",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFF2709C5),
                                        fontSize: 16),
                                maxLines: 1,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Rs. 1499",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge!
                                        .copyWith(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                            fontSize: 17),
                                    maxLines: 1,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "Rs. 1599",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge!
                                        .copyWith(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xFF6D6D78),
                                            fontSize: 16),
                                    maxLines: 1,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "1 set (24 Pieces)",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFFE31E24),
                                        fontSize: 16),
                                maxLines: 1,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Transform.scale(
            scale: 0.5,
            child: SvgPicture.asset(
              AssetStrings.drawerIcon,
            )),
        backgroundColor: Colors.yellowAccent,
        title: Row(
          children: [
            Image.asset(
              AssetStrings.companyLogo,
              height: 30,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "Vishal Prints",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(5),
              child: SvgPicture.asset(
                AssetStrings.notificationsIcon,
                height: 25,
                width: 25,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: SvgPicture.asset(
                AssetStrings.heartIcon,
                height: 25,
                width: 25,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SvgPicture.asset(
                      AssetStrings.cartIcon,
                      height: 25,
                      width: 25,
                    ),
                  ),
                ),
                Positioned(
                  right: 2,
                  top: 0,
                  child: CircleAvatar(
                    radius: 7.5,
                    foregroundColor: Colors.redAccent,
                    backgroundColor: Colors.redAccent,
                    child: Center(
                      child: Text(
                        "2",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(
                                fontWeight: FontWeight.w500, fontSize: 7.5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: const Drawer(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height / 2,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.yellowAccent,
              Colors.yellowAccent.withOpacity(0.75),
              Colors.yellowAccent.withOpacity(0.5),
              Colors.white.withOpacity(0.75),
              Colors.white.withOpacity(1),
              Colors.white.withOpacity(0.5),
              Colors.white.withOpacity(0.1),
            ], // Gradient colors
          ),
        ),
        child: ListView(
          shrinkWrap: true,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ///textField
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: TextFormField(
                    decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Rounded corners
                    borderSide: BorderSide.none, // Remove underline
                  ),
                  hintText: 'What are you looking for',
                  hintStyle: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: const Color(0xFF7D7D7D)),
                  filled: true,
                  fillColor: Colors.white,
                )),
              ),
            ),

            ///scrollabr
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 130,
              child: ListView.builder(
                  itemCount: 20,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const CircleAvatar(
                              radius: 40,
                              backgroundImage:
                                  AssetImage(AssetStrings.smallTilesSaree),
                              backgroundColor: Colors.transparent),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Border Saree",
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                    fontWeight: FontWeight.w500, fontSize: 12),
                          )
                        ],
                      ),
                    );
                  }),
            ),

            CarouselSlider(
                items: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      AssetStrings.bigTileSaree,
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      AssetStrings.bigTileSaree,
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      AssetStrings.bigTileSaree,
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: 200,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: false,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.easeInCirc,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.1,
                  padEnds: true,
                  scrollDirection: Axis.horizontal,
                )),

            const SizedBox(
              height: 10,
            ),
            catalogueWidget(),
            borderSareeWidget(),
            digitalPrintSareeWidget(),
            printedSareeWidget()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Set type to fixed
        items: [
          BottomNavigationBarItem(
              label: "Home",
              icon: SvgPicture.asset(
                AssetStrings.homeScreenBottomNav,
              )),
          BottomNavigationBarItem(
              label: "Wishlist",
              icon: SvgPicture.asset(AssetStrings.wishlistBottomNav)),
          BottomNavigationBarItem(
              label: "Cart",
              icon: SvgPicture.asset(AssetStrings.cartBottomNav)),
          BottomNavigationBarItem(
              label: "My Order",
              icon: SvgPicture.asset(AssetStrings.myOrdersBottomNav)),
        ],
      ),
    );
  }
}
