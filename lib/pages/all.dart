import 'package:flutter/material.dart';

class All extends StatelessWidget {
  final List allList;
  All({this.allList});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: Text('جميع ${allList[0]}')),
        body: Container(
            child: ListView.builder(
          itemCount: allList[1].length,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              onTap:(){ showDialog(context: context , builder:(_)=> AlertDialog(
                  title: Text('${allList[1][index].tarikh}') , 
                  content : Text('${allList[1][index].hadath}'),
                  actions: <Widget>[
                    Text('ok') , 
                  ],
                ));},
              trailing: IconButton(
                icon: Icon(Icons.star_border),
                onPressed: () {},
              ),
              subtitle: Text('${allList[1][index].hadath}'),
              isThreeLine: true,
              leading: Text(
                '${index + 1}',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              title: Text('${allList[1][index].tarikh}'),
            ),
          ),
        )),
      ),
    );
  }
}
