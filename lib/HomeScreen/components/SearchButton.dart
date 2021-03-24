import 'package:flutter/material.dart';

class SearchButton extends StatefulWidget {
  @override
  _SearchButtonState createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> {
  bool _kivrim = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      color: Colors.white,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 400),
              width: _kivrim ? 56 : 220,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: Colors.grey[200],
                boxShadow:
                    kElevationToShadow[6], //buna bakicam kEvalationtoShadow
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.only(left: 16),
                    child: !_kivrim
                        ? TextField(
                            decoration: InputDecoration(
                                hintText: 'Search',
                                hintStyle: TextStyle(
                                  color: Colors.grey[400],
                                ),
                                border: InputBorder.none),
                          )
                        : null,
                  )),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 400),
                    child: Material(
                      type: MaterialType.transparency,
                      child: InkWell(
                        highlightColor: Colors.red[100],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(_kivrim ? 32 : 0),
                          topRight: Radius.circular(32),
                          bottomLeft: Radius.circular(_kivrim ? 32 : 0),
                          bottomRight: Radius.circular(32),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(
                            _kivrim ? Icons.youtube_searched_for : Icons.close,
                            color: Colors.grey[400],
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _kivrim = !_kivrim;
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
