import 'package:flutter/material.dart';
import 'components/SearchButton.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          SearchButton(),
          Divider(
            height: 4,
            color: Colors.grey,
          ),
          Container(
            height: 468,
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 1.0),
                  height: 95,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      MyCards("assets/images/penti.png", "Penti"),
                      MyCards("assets/images/koton-logo.jpg", "Koton"),
                      MyCards("assets/images/slazenger_logo.png", "Slazenger"),
                      MyCards("assets/images/xiaomi-logo.png", "Xiaomi"),
                      MyCards("assets/images/NARS-Logo.png", "Nars"),
                      MyCards("assets/images/mango.png", "Mango"),
                      MyCards("assets/images/penti.png", "Penti"),
                      MyCards("assets/images/ZARA.png", "Zara"),
                      MyCards("assets/images/BERSHKA.jpg", "Bershka"),
                    ],
                  ),
                ),
                VerticalCards("assets/images/shopping.jpg"),
                VerticalCards("assets/images/brand.jpg"),
                VerticalCards("assets/images/penticenterimg.jpg"),
                VerticalCards("assets/images/shopping2.png"),
                VerticalCards("assets/images/slezengar.jpg"),
                SizedBox(
                  height: 4,
                ),
                Container(
                  child: Center(
                    child: Text(
                      "Son Gezindiklerinize benzer Urunler",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        fontFamily: 'Redressed',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                similirCards("assets/images/slezengar.jpg"),
                similirCards("assets/images/zara.jpg"),
                similirCards("assets/images/zara2.jpg"),
                similirCards("assets/images/BERSHKA.jpg"),
                ////
                VerticalCards("assets/images/shopping.jpg"),
                VerticalCards("assets/images/brand.jpg"),
                VerticalCards("assets/images/penticenterimg.jpg"),
                VerticalCards("assets/images/shopping2.png"),
                VerticalCards("assets/images/slezengar.jpg"),
                ////
                similirCards("assets/images/slezengar.jpg"),
                similirCards("assets/images/zara.jpg"),
                similirCards("assets/images/zara2.jpg"),
                similirCards("assets/images/BERSHKA.jpg"),
                SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.pink[200]),
                  width: 40,
                  height: 50,
                  child: Center(
                      child: Text(
                    "Diger Kategorileri Gor",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding similirCards(String imgVal) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.pink[50],
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8)),
        width: MediaQuery.of(context).size.width,
        height: 190,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                height: 210,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(imgVal),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Slazenger Indirim kacirmayin',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  width: 200,
                  height: 40,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 6,
                      ),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.pink[100],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "%55",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Center(
                        child: Text(
                          "29,99Tl",
                          style: TextStyle(
                              fontWeight: FontWeight.w100,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Center(
                        child: Text(
                          "29,99Tl",
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  "3,31 Tl` den baslayan taksitlerle",
                  style: TextStyle(color: Colors.pink[100]),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container VerticalCards(String imgVal) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Card(
            child: Wrap(
              children: [Image.asset(imgVal)],
            ),
          ),
        ],
      ),
    );
  }

  Container MyCards(String imgval, String brandname) {
    return Container(
      width: 100,
      color: Colors.grey[200],
      child: Column(
        children: [
          SizedBox(
            height: 3,
          ),
          Card(
            shape: CircleBorder(),
            child: Center(
              child: Wrap(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(imgval),
                  ),
                ],
              ),
            ),
          ),
          Text(
            brandname,
            style: TextStyle(fontFamily: 'Redressed', fontSize: 16),
          )
        ],
      ),
    );
  }
}
