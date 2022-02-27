import '../components/completedtask_widget.dart';
import '../components/cycle2_widget.dart';
import '../components/cycles2_widget.dart';
import '../components/pendingtask_widget.dart';
import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CycleWidget extends StatefulWidget {
  const CycleWidget({Key key}) : super(key: key);

  @override
  _CycleWidgetState createState() => _CycleWidgetState();
}

class _CycleWidgetState extends State<CycleWidget> {
  DateTimeRange calendarSelectedDay;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('FloatingActionButton pressed ...');
        },
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        elevation: 8,
        child: Icon(
          Icons.add,
          color: FlutterFlowTheme.of(context).tertiaryColor,
          size: 28,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Cycle2Widget(),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.95,
                      height: 420,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/No_way_for_Ambulance.png',
                          ).image,
                        ),
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: FlutterFlowCalendar(
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        iconColor: Color(0xFFFEFEFE),
                        weekFormat: false,
                        weekStartsMonday: false,
                        onChange: (DateTimeRange newSelectedDate) {
                          setState(() => calendarSelectedDay = newSelectedDate);
                        },
                        titleStyle: TextStyle(
                          color: Color(0xFFFEFEFE),
                        ),
                        dayOfWeekStyle: TextStyle(
                          color: Color(0xFF52B1EF),
                        ),
                        dateStyle: TextStyle(
                          color: Color(0xFFFEFEFE),
                          fontWeight: FontWeight.w500,
                        ),
                        selectedDateStyle: TextStyle(
                          color: Color(0xC4050E6A),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                        ),
                        inactiveDateStyle:
                            FlutterFlowTheme.of(context).subtitle1.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF77BF18),
                                ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Cycle',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Cycles2Widget(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Task',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    PendingtaskWidget(),
                    CompletedtaskWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
