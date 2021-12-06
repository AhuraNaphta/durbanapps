import '../braiders/braiders_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFE90C0C),
      body: SafeArea(
        child: FFButtonWidget(
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BraidersWidget(),
              ),
            );
          },
          text: 'Button',
          options: FFButtonOptions(
            width: 130,
            height: 40,
            color: FlutterFlowTheme.primaryColor,
            textStyle: FlutterFlowTheme.subtitle2.override(
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
    );
  }
}
