import 'package:flutter/material.dart';

class CategoriesDogumGunu extends StatefulWidget {
  @override
  _CategoriesDogumGunuState createState() => _CategoriesDogumGunuState();
}

class _CategoriesDogumGunuState extends State<CategoriesDogumGunu> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        categoriesview("Tum Urunler"),
        categoriesview("Dogum Gunu Cicekleri"),
        categoriesview("Dogum Gunu Hediyeleri"),
        categoriesview("Dogum Gunu Bonnyfood"),
        categoriesview("Erkek Aksesuarlari"),
        categoriesview("Tasarim Cicekler"),
        categoriesview("Kisiye Ozel"),
        categoriesview("Fotografli Urunler"),
        categoriesview("Cikolata"),
        categoriesview("Taki & Aksesuar"),
        categoriesview("Meyve Sepeti"),
        categoriesview("Kisiye Ozel Cicekler"),
        categoriesview("Bonsai"),
        categoriesview("Teraryum"),
        categoriesview("Saat"),
        categoriesview("Saksi Cicekleri"),
        categoriesview("Guller"),
      ],
    );
  }

  Column categoriesview(String name) {
    return Column(
      children: [
        // Divider(
        //   color: Colors.grey[500],
        // ),
        Container(
          height: 50,
          child: Center(
              child: Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          )),
        ),
      ],
    );
  }
}
