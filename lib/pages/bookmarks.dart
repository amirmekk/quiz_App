import 'package:flutter/material.dart';

List bookmarkedItems = [];

updateBookmarks(itemOne, itemTwo) {
  List toBeAdded = [];
  bool isThere = false;

  for (int i = 0; i < bookmarkedItems.length; i++) {
    if (bookmarkedItems[i][0] == itemOne) {
      isThere = true;
    }
  }

  if (isThere) {
    print('already there');
    return 'العنصر متواجد في المفضلة من قبل';
  }
  if (!isThere) {
    toBeAdded.addAll([itemOne, itemTwo]);
    bookmarkedItems.add(toBeAdded);
    print('added');
    return 'تمت الاضافة الى المفضلة';
  }
}

Widget updateBookmarks2(itemOne, itemTwo) {
  bool isThere = false;
  Widget icon;
  for (int i = 0; i < bookmarkedItems.length; i++) {
    if (bookmarkedItems[i][0] == itemOne) {
      isThere = true;
    }
  }

  if (isThere) {
    icon = Icon(Icons.star);
  }
  if (!isThere) {
    icon = Icon(Icons.star_border);
  }
  return icon;
}

class Bookmarks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: Text('المفضلة')),
        body: Container(
            child: bookmarkedItems.isEmpty
                ? Center(child: Text('add bookmarks to see them here'))
                : ListView.builder(
                    itemBuilder: (context, index) => Card(
                      child: ListTile(
                        title: Text(bookmarkedItems[index][0]),
                        subtitle: Text(bookmarkedItems[index][1]),
                        trailing: IconButton(
                            icon: Icon(Icons.delete_forever), onPressed: () {}),
                      ),
                    ),
                    itemCount: bookmarkedItems.length,
                  )),
      ),
    );
  }
}
