// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payung_clone/user_settings.dart';

import 'feature_container.dart';
import 'feature_icon.dart';
import 'navigation_menu.dart';
import 'product.dart';
import 'product_wellness.dart';

class PayungApp extends StatefulWidget {
  const PayungApp({super.key});

  @override
  State<PayungApp> createState() => _PayungAppState();
}

class _PayungAppState extends State<PayungApp> {
  List<NavigationMenu> mainMenu = [
    const NavigationMenu(Icons.home_outlined, "Beranda"),
    const NavigationMenu(Icons.search_sharp, "Cari"),
    const NavigationMenu(Icons.add_shopping_cart, "Keranjang"),
  ];
  List<NavigationMenu> hideMenu = [
    const NavigationMenu(FontAwesomeIcons.box, "Daftar Transaksi"),
    const NavigationMenu(Icons.local_activity_outlined, "Voucher Saya"),
    const NavigationMenu(Icons.location_on_outlined, "Alamat Pengiriman"),
    const NavigationMenu(Icons.people_outline, "Daftar Teman"),
  ];
  int selectedMenu = 0;
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Selamat Pagi,",
              style: textTheme.bodySmall?.copyWith(color: Colors.white),
            ),
            const Text(
              "Ibnu",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              (Icons.notifications_outlined),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UserSettings()));
            },
            icon: const Icon(Icons.person_outline),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.grey[50],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: ListView(
          children: [
            Text(
              "Produk Keuangan",
              style: textTheme.headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            FeatureContainer(
              children: [
                FeatureIcon(
                  icon: Icons.people_alt_outlined,
                  colorIcon: Colors.amber[800],
                  name: "Urun",
                ),
                FeatureIcon(
                  icon: Icons.person,
                  colorIcon: Colors.green[800],
                  name: "Pembiayaan Porsi Haji",
                ),
                FeatureIcon(
                  icon: Icons.description,
                  colorIcon: Colors.amber[700],
                  name: "Financial Check Up",
                ),
                FeatureIcon(
                  icon: FontAwesomeIcons.carSide,
                  colorIcon: Colors.tealAccent[800],
                  name: "Asurnsi Mobil",
                ),
                FeatureIcon(
                  icon: FontAwesomeIcons.houseFire,
                  colorIcon: Colors.red[800],
                  name: "Asuransi Properti",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Katogori Pilihan",
                  style: textTheme.headlineSmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      const Text("Wishlist"),
                      const SizedBox(width: 4),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.amber[800],
                              borderRadius: BorderRadius.circular(16)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 2),
                          child: const Text(
                            "0",
                            style: TextStyle(color: Colors.white),
                          )),
                    ],
                  ),
                )
              ],
            ),
            FeatureContainer(
              children: [
                const FeatureIcon(
                  icon: FontAwesomeIcons.umbrellaBeach,
                  colorIcon: Colors.blue,
                  name: "Hobi",
                ),
                FeatureIcon(
                  icon: FontAwesomeIcons.shirt,
                  colorIcon: Colors.blue[800],
                  name: "Merchandise",
                ),
                FeatureIcon(
                  icon: FontAwesomeIcons.heartPulse,
                  colorIcon: Colors.red[700],
                  name: "Gaya Hidup Sehat",
                ),
                FeatureIcon(
                  icon: FontAwesomeIcons.comments,
                  colorIcon: Colors.blue[800],
                  name: "Conserling & Rohani",
                ),
                FeatureIcon(
                  icon: FontAwesomeIcons.brain,
                  colorIcon: Colors.purple[800],
                  name: "Self Development",
                ),
                FeatureIcon(
                  icon: FontAwesomeIcons.creditCard,
                  colorIcon: Colors.green[800],
                  name: "Perencanaan Keuangan",
                ),
                FeatureIcon(
                  icon: FontAwesomeIcons.maskFace,
                  colorIcon: Colors.green[900],
                  name: "Konsultasi Medis",
                ),
                const FeatureIcon(
                  icon: Icons.widgets_outlined,
                  name: "Lihat Semua",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Explore Wellness",
                  style: textTheme.headlineSmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    isExpanded: true,
                    value: "popular",
                    items: const [
                      DropdownMenuItem(
                          value: "popular", child: Text("Terpopular")),
                      DropdownMenuItem(
                          value: "name_ascending", child: Text("A to Z")),
                      DropdownMenuItem(
                          value: "name_descending", child: Text("Z to A")),
                      DropdownMenuItem(
                          value: "price_ascending",
                          child: Text("Harga Terendah")),
                      DropdownMenuItem(
                          value: "price_descending",
                          child: Text("Harga Tertinggi")),
                    ],
                    buttonStyleData: ButtonStyleData(
                      width: 150,
                      height: 30,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                )
              ],
            ),
            Wrap(
              spacing: 40,
              children: listProduct
                  .map((product) => ProductWellness(product: product))
                  .toList(),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.grey[50],
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 8),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      top: BorderSide(
                    color: Colors.grey,
                  )),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  )),
              child: NavigationBar(
                indicatorColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                selectedIndex: selectedMenu,
                onDestinationSelected: (index) {
                  setState(() {
                    selectedMenu = index;
                  });
                },
                destinations: mainMenu
                    .map((menu) => NavigationDestination(
                        icon: Icon(menu.icon), label: menu.name))
                    .toList(),
              ),
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (ctx) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                      child: Stack(
                        alignment: AlignmentDirectional.topCenter,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.only(top: 8),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                    top: BorderSide(
                                  color: Colors.grey,
                                )),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                )),
                            padding: const EdgeInsets.only(
                                top: 16, left: 16, right: 16),
                            height: 200,
                            child: Wrap(
                              spacing: 5,
                              runSpacing: 16,
                              children: [...mainMenu, ...hideMenu]
                                  .map(
                                    (menu) => SizedBox(
                                      width: 120,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(menu.icon),
                                          Text(
                                            menu.name,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                    top: BorderSide(
                                  color: Colors.grey,
                                )),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(50),
                                ),
                              ),
                              child: const Icon(Icons.keyboard_arrow_down),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        top: BorderSide(
                      color: Colors.grey,
                    )),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: const Icon(Icons.keyboard_arrow_up)),
            ),
          ],
        ),
      ),
    );
  }
}
