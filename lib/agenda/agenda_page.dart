import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_devfest/misc/dev_scaffold.dart';
import 'package:flutter_devfest/agenda/session.dart';
import 'package:flutter_devfest/agenda/session_list.dart';
import 'package:flutter_devfest/misc/tools.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AgendaPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //var _homeBloc = HomeBloc();
    return DefaultTabController(
      length: 2,
      child: DevScaffold(
        title: "Orion Fest",
        tabBar: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Tools.multiColors[Random().nextInt(4)],
          labelStyle: TextStyle(
            fontSize: 12,
          ),
          isScrollable: false,
          tabs: <Widget>[
            Tab(
              child: Text("Takshak"),
              icon: Icon(
                FontAwesomeIcons.handshake,
                size: 12,
              ),
            ),
            Tab(
              child: Text("Umang"),
              icon: Icon(
                FontAwesomeIcons.icons,
                size: 12,
              ),
            ),
            
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            // Takshak
            SessionList(allSessions: takshak, event:'takshak',),
            // Umang
            SessionList(allSessions: umang,event:'umang'),
          ],
        ),
      ),
    );
  }
}
