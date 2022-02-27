import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class TheftWidget extends StatefulWidget {
  const TheftWidget({Key key}) : super(key: key);

  @override
  _TheftWidgetState createState() => _TheftWidgetState();
}

class _TheftWidgetState extends State<TheftWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Lottie.network(
            'https://assets4.lottiefiles.com/packages/lf20_j6fywzxe.json',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
            animate: true,
          ),
          FFButtonWidget(
            onPressed: () {
              print('Button pressed ...');
            },
            text: 'Yes it\'s me',
            options: FFButtonOptions(
              width: 130,
              height: 40,
              color: Color(0xFF34C108),
              textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1,
              ),
              borderRadius: 0,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
            child: FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'It\'s not me',
              options: FFButtonOptions(
                width: 130,
                height: 40,
                color: Color(0xFFF02E31),
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
