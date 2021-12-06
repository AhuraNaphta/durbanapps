import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BraidersWidget extends StatefulWidget {
  const BraidersWidget({Key key}) : super(key: key);

  @override
  _BraidersWidgetState createState() => _BraidersWidgetState();
}

class _BraidersWidgetState extends State<BraidersWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF0057CC),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: StreamBuilder<List<BraiderssRecord>>(
                  stream: queryBraiderssRecord(
                    singleRecord: true,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(
                            color: FlutterFlowTheme.primaryColor,
                          ),
                        ),
                      );
                    }
                    List<BraiderssRecord> listViewBraiderssRecordList =
                        snapshot.data;
                    // Return an empty Container when the document does not exist.
                    if (snapshot.data.isEmpty) {
                      return Container();
                    }
                    final listViewBraiderssRecord =
                        listViewBraiderssRecordList.isNotEmpty
                            ? listViewBraiderssRecordList.first
                            : null;
                    return ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: FlutterFlowTheme.tertiaryColor,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  StreamBuilder<List<BraiderssRecord>>(
                                    stream: queryBraiderssRecord(
                                      singleRecord: true,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                            ),
                                          ),
                                        );
                                      }
                                      List<BraiderssRecord>
                                          textBraiderssRecordList =
                                          snapshot.data;
                                      final textBraiderssRecord =
                                          textBraiderssRecordList.isNotEmpty
                                              ? textBraiderssRecordList.first
                                              : null;
                                      return Text(
                                        valueOrDefault<String>(
                                          listViewBraiderssRecord.name,
                                          'Siziwe',
                                        ),
                                        style: FlutterFlowTheme.bodyText1,
                                      );
                                    },
                                  ),
                                  StreamBuilder<List<BraiderssRecord>>(
                                    stream: queryBraiderssRecord(
                                      singleRecord: true,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                            ),
                                          ),
                                        );
                                      }
                                      List<BraiderssRecord>
                                          textBraiderssRecordList =
                                          snapshot.data;
                                      final textBraiderssRecord =
                                          textBraiderssRecordList.isNotEmpty
                                              ? textBraiderssRecordList.first
                                              : null;
                                      return Text(
                                        valueOrDefault<String>(
                                          listViewBraiderssRecord.address,
                                          '9 Dr Langa',
                                        ),
                                        style: FlutterFlowTheme.bodyText1,
                                      );
                                    },
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    );
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
