import 'package:flutter/material.dart';

import '../../map/map_widget.dart';

class MapPipWidget extends StatelessWidget {
  final VoidCallback onTap;

  const MapPipWidget({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160,
        height: 90,
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Colors.white38, width: 1),
          borderRadius: BorderRadius.circular(6),
          boxShadow: const [
            BoxShadow(color: Colors.black54, blurRadius: 8, offset: Offset(0, 3)),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: const MapWidget(compact: true),
      ),
    );
  }
}
