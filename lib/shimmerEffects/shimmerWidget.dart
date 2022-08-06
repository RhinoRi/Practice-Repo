import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  final double width;
  final double height;
  final ShapeBorder shapeBorder;

  const ShimmerWidget.rectangular(
      {required this.height,
      required this.width,
      this.shapeBorder = const RoundedRectangleBorder()});

  const ShimmerWidget.circular(
      {required this.height,
      required this.width,
      this.shapeBorder = const CircleBorder()});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[400]!,
      highlightColor: Colors.grey[300]!,
      period: const Duration(milliseconds: 2),
      child: Container(
        width: width,
        height: height,
        decoration:
            ShapeDecoration(color: Colors.grey[400], shape: shapeBorder),
      ),
    );
  }
}
