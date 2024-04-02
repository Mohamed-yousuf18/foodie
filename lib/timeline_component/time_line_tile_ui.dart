import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'event_path_page.dart';

class TimeLineTileUI extends StatelessWidget {

  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final eventChild;



  const TimeLineTileUI(
  {Key? key,
  required this.isFirst,
    required this.isLast,
    required this.isPast,
    required this.eventChild  })
  :super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: LineStyle(
          color: isPast ? Colors.black : Color(0xffB8A695),),
        indicatorStyle: IndicatorStyle(
          width: 40.0,
          color: isPast ? Colors.black : Color(0xffB8A695),
          iconStyle: IconStyle(
            iconData: Icons.check_circle,
            color: isPast ? Colors.greenAccent : Color(0xffB8A695),

          )
        ),
        endChild: EventPath(
          isPast: isPast,
          childWidget: eventChild,),
      ),

    );
  }
}
