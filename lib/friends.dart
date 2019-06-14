import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meet/category.dart';

class Team extends StatelessWidget {
  static const _teamMeeting = <String>[
    'meet 1',
    'meet 2',
    'meet 3',
  ];

  static const List<Color> _baseColors = <Color>[
    Colors.tealAccent,
    Colors.orangeAccent,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 10.0, top: 10.0, bottom: 0.0),
            sliver: SliverList(
                delegate: SliverChildListDelegate(
              [
                Text(
                  'Event meetings',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            )),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
                left: 10.0, right: 10.0, top: 10.0, bottom: 0.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Category(
                    name: _teamMeeting[index],
                    color: _baseColors[index],
                    iconLocation: Icons.keyboard_arrow_right,
                  );
                },
                childCount: _teamMeeting.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
