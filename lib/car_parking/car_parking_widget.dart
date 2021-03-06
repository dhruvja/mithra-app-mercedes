import 'dart:async';

import '../components/theft_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarParkingWidget extends StatefulWidget {
  const CarParkingWidget({Key key}) : super(key: key);

  @override
  _CarParkingWidgetState createState() => _CarParkingWidgetState();
}

class _CarParkingWidgetState extends State<CarParkingWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 39),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 51),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'rowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 60),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 51),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'rowOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 58),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'rowOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 60),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'stackOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 78),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 29),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
    Timer mytimer = Timer.periodic(Duration(seconds: 5), (timer) {
      Revert();
    });
  }

  bool _parked = true;
  String _distance = "Far";
  String _stats = "No";
  String _where = "Vehicle is out";
  String _park = "Car is Running";
  int _length = 72;
  bool _done = true;
  int x = 0;

  void Revert() {
    // x++;
    if (_done) {
      if (_parked == true) {
        setState(() {
          _parked = !_parked;
          _distance = "Home";
          _stats = "Yes";
          _where = "Vehicle is at home";
          _park = "Car is Parked";
          _length = 0;
          _done = false;
        });
      } else {
        setState(() {
          _parked = !_parked;
          _distance = "Far";
          _stats = "No";
          _where = "Vehicle is out";
          _park = "Car is Running";
          _length = 72;
          _done = false;
        });
      }
    }
    // print(x);
    // if(x == 3){
    //     showDialog(
    //       context: context,
    //       builder: (ctx) => AlertDialog(
    //         title: Text("Theft Detected"),
    //         content: TheftWidget(),
    //       ),
    //     );
  }

  @override
  Widget build(BuildContext context) {
    void _showDialog() {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text("Theft Detected"),
          content: TheftWidget(),
        ),
      );
    }

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF090F13),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 50, 24, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Your Car',
                    style: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF8B97A2),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Fleet Model 42',
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'Lexend Deca',
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFF1E2429),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      buttonSize: 46,
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.white,
                        size: 24,
                      ),
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CarParkingWidget(),
                  ),
                );
              },
              child: Image.asset(
                'assets/images/carFull@2x.png',
                width: MediaQuery.of(context).size.width,
                height: 200,
                fit: BoxFit.cover,
              ),
            ).animated([animationsMap['imageOnPageLoadAnimation']]),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () async {
                    // await Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => CarParkingWidget(),
                    //   ),
                    // );
                    _showDialog();
                  },
                  child: AutoSizeText(
                    _length.toString(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Lexend Deca',
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                      fontSize: 50,
                    ),
                  ),
                ).animated([animationsMap['textOnPageLoadAnimation']]),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    'Hours',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Lexend Deca',
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ],
              ).animated([animationsMap['rowOnPageLoadAnimation1']]),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    _where,
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF95A1AC),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ],
              ).animated([animationsMap['rowOnPageLoadAnimation2']]),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Color(0xFF1E2429),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 16,
                        decoration: BoxDecoration(
                          color: Color(0xFF4B39EF),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ).animated([animationsMap['rowOnPageLoadAnimation3']]),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                        child: Text(
                          'Parked',
                          style:
                              FlutterFlowTheme.of(context).bodyText2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF8B97A2),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                      Text(
                        _stats,
                        style: FlutterFlowTheme.of(context).title1.override(
                              fontFamily: 'Lexend Deca',
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                        child: Text(
                          'Range',
                          style:
                              FlutterFlowTheme.of(context).bodyText2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF8B97A2),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                      Text(
                        _distance,
                        style: FlutterFlowTheme.of(context).title1.override(
                              fontFamily: 'Lexend Deca',
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                        child: Text(
                          'Status',
                          style:
                              FlutterFlowTheme.of(context).bodyText2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF8B97A2),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                      Text(
                        'Good',
                        style: FlutterFlowTheme.of(context).title1.override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF39D2C0),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ],
              ).animated([animationsMap['rowOnPageLoadAnimation4']]),
            ),
            Container(
              height: 200,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFF262D34),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                _park,
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Text(
                                    'Park your vechile in stimulated location',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: Color(0xB3FFFFFF),
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, -0.75),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: _parked ? Color(0xFFDF3F3F) : Colors.green,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 7,
                            color: Color(0x8E000000),
                            offset: Offset(0, 3),
                          )
                        ],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.power_settings_new_rounded,
                        color: Colors.white,
                        size: 50,
                      ),
                    ).animated([animationsMap['containerOnPageLoadAnimation']]),
                  ),
                ],
              ),
            ).animated([animationsMap['stackOnPageLoadAnimation']]),
          ],
        ),
      ),
    );
  }
}
