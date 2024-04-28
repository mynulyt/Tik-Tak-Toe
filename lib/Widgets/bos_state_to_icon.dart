import 'package:flutter/material.dart';

import '../Enum/box_stat_enum.dart';

class BoxStateToIcon extends StatelessWidget {
  final boxState;
  const BoxStateToIcon({super.key, this.boxState});

  @override
  Widget build(BuildContext context) {
    return boxState == BoxState.circle
        ? Icon(Icons.lens_outlined, size: 100.0)
        : boxState == BoxState.cross
            ? Icon(Icons.close, size: 100.0)
            : Container();
  }
}
