import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search1Widget extends StatefulWidget {
  const Search1Widget({Key key}) : super(key: key);

  @override
  _Search1WidgetState createState() => _Search1WidgetState();
}

class _Search1WidgetState extends State<Search1Widget> {
  String dropDownValue1;
  String dropDownValue2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
        color: Color(0xFF010524),
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                        child: FlutterFlowDropDown(
                          initialOption: dropDownValue1 ??= 'Is it Accident',
                          options: ['Is it Accident', 'Yes', 'No', ''].toList(),
                          onChanged: (val) =>
                              setState(() => dropDownValue1 = val),
                          width: 150,
                          height: 50,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                              ),
                          fillColor: Color(0x00FFFFFF),
                          elevation: 2,
                          borderColor:
                              FlutterFlowTheme.of(context).tertiaryColor,
                          borderWidth: 0,
                          borderRadius: 0,
                          margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                          hidesUnderline: true,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                        child: FlutterFlowDropDown(
                          options: [
                            'Injury type',
                            'Head',
                            'Heart attack',
                            'Ortho',
                            'Other emergency'
                          ].toList(),
                          onChanged: (val) =>
                              setState(() => dropDownValue2 = val),
                          width: 150,
                          height: 50,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                              ),
                          fillColor: Color(0x00FFFFFF),
                          elevation: 2,
                          borderColor:
                              FlutterFlowTheme.of(context).tertiaryColor,
                          borderWidth: 0,
                          borderRadius: 0,
                          margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                          hidesUnderline: true,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          FFButtonWidget(
            onPressed: () {
              print('Button pressed ...');
            },
            text: 'Get Current Location',
            icon: Icon(
              Icons.location_on,
              size: 15,
            ),
            options: FFButtonOptions(
              width: 300,
              height: 40,
              color: FlutterFlowTheme.of(context).primaryColor,
              textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1,
              ),
              borderRadius: 12,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
            child: FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'Search',
              icon: Icon(
                Icons.search,
                size: 15,
              ),
              options: FFButtonOptions(
                width: 300,
                height: 40,
                color: FlutterFlowTheme.of(context).primaryColor,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
