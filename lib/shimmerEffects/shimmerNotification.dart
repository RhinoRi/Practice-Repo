import 'package:flutter/material.dart';
import 'package:practice_app/shimmerEffects/shimmerWidget.dart';

class NotificationShimmer extends StatelessWidget {
  const NotificationShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: ShimmerWidget.circular(height: 50, width: 50),
            title: ShimmerWidget.rectangular(
                height: 18, width: MediaQuery.of(context).size.width - 0.4),
          ),
          ShimmerWidget.rectangular(
              height: 3, width: MediaQuery.of(context).size.width - 0.4),
        ],
      ),
    );
  }
}
