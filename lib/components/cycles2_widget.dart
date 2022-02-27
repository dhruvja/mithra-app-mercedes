import '../components/menstrual_flow_green_widget.dart';
import '../components/menstrual_flow_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cycles2Widget extends StatefulWidget {
  const Cycles2Widget({Key key}) : super(key: key);

  @override
  _Cycles2WidgetState createState() => _Cycles2WidgetState();
}

class _Cycles2WidgetState extends State<Cycles2Widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      height: 170,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiaryColor,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: MenstrualFlowWidget(),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: MenstrualFlowGreenWidget(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
