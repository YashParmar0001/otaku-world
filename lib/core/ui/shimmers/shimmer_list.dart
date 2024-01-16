import 'package:flutter/cupertino.dart';

class ShimmerList extends StatelessWidget {
  ShimmerList({
    super.key,
    required this.child,
    this.itemCount = 10,
    this.scrollDirection = Axis.vertical,
  });
  Widget child;
  int itemCount;
  Axis scrollDirection;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: scrollDirection,
      itemCount: itemCount,
      itemBuilder: (context, index) => child,
    );
  }
}
