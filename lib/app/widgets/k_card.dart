import 'package:flutter/material.dart';

class KCard extends StatelessWidget {
  const KCard({super.key, required this.child, this.color, this.radius});
  final Widget child;
  final Color? color;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 12 ) ,
        color:  color ??Colors.grey[200]
      ),
      child: child,
    );
  }
}
