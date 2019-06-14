import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

const double _rowHeight = 65.0;
final BorderRadius _borderRadius = BorderRadius.circular(_rowHeight / 3);

/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.
class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color; // ignore: always_specify_types
  final IconData iconLocation;

  /// Creates a [Category].
  ///
  /// A [Category] saves the name of the Category (e.g. 'Length'), its color for
  /// the UI, and the icon that represents it (e.g. a ruler).
  // ignore: sort_constructors_first
  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
  })  : assert(name != null),
        assert(color != null),
        assert(iconLocation != null),
        super(key: key);

  /// Builds a custom widget that shows [Category] information.
  ///
  /// This information includes the icon, name, and color for the [Category].
  @override
  // This `context` parameter describes the location of this widget in the
  // widget tree. It can be used for obtaining Theme data from the nearest
  // Theme ancestor in the tree. Below, we obtain the display1 text theme.
  // See https://docs.flutter.io/flutter/material/Theme-class.html
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight,
        child: InkWell(
          borderRadius: _borderRadius,
          highlightColor: color,
          splashColor: color,
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.all(16.0), // ignore: prefer_const_constructors
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              // ignore: always_specify_types
              children: [
                Padding(
                  padding:
                      EdgeInsets.all(2.0), // ignore: prefer_const_constructors
                  child: Icon(
                    iconLocation,
                    size: 16.0,
                  ),
                ),
                Center(
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    //style: Theme.of(context).textTheme.headline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
