import 'package:flutter/material.dart';

import 'package:flutter_app/configs/public.dart';

///attention 关注
class AttentionIndex extends StatefulWidget {
  @override
  _AttentionIndexState createState() => _AttentionIndexState();
}

class _AttentionIndexState extends State<AttentionIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrefAppBar(
        automaticallyImplyLeading: false,
        title: buildTabs(),
        centerTitle: true,
      ),
    );
  }

  // tabs
  Widget buildTabs() {
    return Container(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              Language.of().attention,
              style: TextStyle(color: Colors.pink),
            ),
            Text(
              Language.of().square,
              style: TextStyle(color: Colors.pink),
            ),
            Text(
              Language.of().ranking,
              style: TextStyle(color: Colors.pink),
            ),
          ]),
    );
  }
}
