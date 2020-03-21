import 'package:flutter/material.dart';
import 'package:chaikhana/Favorites/favorites_page.dart';
import 'package:chaikhana/Home/home_page.dart';

import 'package:chaikhana/global.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({Key key, @required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              icon: Icon(
                Icons.home,
                color: index == 0
                    ? primaryColor
                    : Theme.of(context).textTheme.caption.color,
              ),
              onPressed: () {
                if (index != 0)
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomePage()));
              }),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: index == 1
                      ? primaryColor
                      : Theme.of(context).textTheme.caption.color,
                ),
                onPressed: () {
                  if (index != 1)
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => FavoritesPage()));
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: index == 2
                      ? primaryColor
                      : Theme.of(context).textTheme.caption.color,
                ),
                onPressed: () {}),
          ),
          IconButton(
              icon: Icon(
                Icons.account_circle,
                color: index == 3
                    ? primaryColor
                    : Theme.of(context).textTheme.caption.color,
              ),
              onPressed: () {})
        ],
      ),
    );
  }
}
