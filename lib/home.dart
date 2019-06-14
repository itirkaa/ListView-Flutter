import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meet/category.dart';

class Event extends StatelessWidget {
  //Home(this.listType);
  //final String listType;
  /*@override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'listType',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
    );
  }*/
  static const _eventMeeting = <String>[
    'event 1',
    'event 2',
    'event 3',
  ];

  static const _projectMeeting = <String>[
    'project 1',
    'project 2',
    'project 3',
  ];

  static const _committeeMeeting = <String>[
    'committee 1',
    'committee 2',
    'committee 3',
  ];

  static const _categoryNames = <String>[
    'Projects',
    'Committees',
    'Events',
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
                    name: _eventMeeting[index],
                    color: _baseColors[index],
                    iconLocation: Icons.keyboard_arrow_right,
                  );
                },
                childCount: _eventMeeting.length,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 10.0, top: 10.0, bottom: 0.0),
            sliver: SliverList(
                delegate: SliverChildListDelegate(
              [
                Text(
                  'Project meetings',
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
                    name: _projectMeeting[index],
                    color: _baseColors[index],
                    iconLocation: Icons.keyboard_arrow_right,
                  );
                },
                childCount: _projectMeeting.length,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 10.0, top: 10.0, bottom: 0.0),
            sliver: SliverList(
                delegate: SliverChildListDelegate(
              [
                Text(
                  'Committee meetings',
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
                    name: _committeeMeeting[index],
                    color: _baseColors[index],
                    iconLocation: Icons.keyboard_arrow_right,
                  );
                },
                childCount: _committeeMeeting.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
