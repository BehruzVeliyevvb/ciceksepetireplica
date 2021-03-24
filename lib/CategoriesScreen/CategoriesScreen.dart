import 'package:ciceksepetireplica/CategoriesScreen/components/CategoriesDogumGunu.dart';
import 'package:ciceksepetireplica/HomeScreen/components/SearchButton.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  int selecteditem = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        SizedBox(
          height: 23,
        ),
        SearchButton(),
        Divider(
          height: 4,
          color: Colors.grey,
        ),
        Row(children: [
          Container(
            height: 468,
            width: 90,
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                Column(
                  children: [
                    categoriesButton(Icons.card_giftcard, 0, "Doğum Günü", 0),
                    categoriesButton(Icons.filter_vintage, 1, "Çiçek", 1),
                    categoriesButton(Icons.pages, 2, "Hediye", 2),
                    categoriesButton(
                        Icons.room_service, 3, "Yenilebilir Çiçek", 3),
                    categoriesButton(Icons.redeem, 4, "Takı, Saat", 4),
                    categoriesButton(
                        Icons.kitchen, 5, " Ev & Yaşam, Ofis, Kırtasiye", 5),
                    categoriesButton(Icons.business_center_sharp, 6,
                        "Parfüm Kişisel Bakım", 6),
                    categoriesButton(Icons.event_seat, 7, "Moda", 7),
                    categoriesButton(Icons.pool, 8, "Spor, Outdoor", 8),
                    categoriesButton(Icons.personal_video, 9, "Elektronik", 9),
                    categoriesButton(Icons.local_library, 10, "Hobi,Kitap", 10),
                    categoriesButton(
                        Icons.child_friendly, 11, "Anne & Bebek, Oyuncak", 11),
                    categoriesButton(
                        Icons.local_drink, 12, "Süper Market,Petshop", 12),
                    categoriesButton(
                        Icons.vpn_key, 13, "Yapı Market, Oto Aksesuar", 13),
                  ],
                )
              ],
            ),
          ),
          Column(children: [
            Container(
              height: 468,
              width: 260,
              child: CategoriesDogumGunu(),
            )
          ]),
        ]),
      ],
    ));
  }

  Widget categoriesButton(
      IconData icon, int index, String name, int categoriesindex) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selecteditem = index;
        });
      },
      child: Container(
        color: index == selecteditem ? Colors.white : Colors.grey[200],
        width: MediaQuery.of(context).size.width,
        height: 100,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Icon(icon,
                size: 30,
                color: index == selecteditem ? Colors.pink[200] : Colors.black),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                name,
                style: TextStyle(
                    color:
                        index == selecteditem ? Colors.pink[200] : Colors.grey,
                    fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
