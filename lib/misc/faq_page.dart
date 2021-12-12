import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_devfest/misc/dev_scaffold.dart';
import 'package:flutter_devfest/misc/tools.dart';

class FaqPage extends StatelessWidget {
  static const String routeName = "/faq";

  @override
  Widget build(BuildContext context) {
    // var _homeBloc = HomeBloc();
    return DevScaffold(
      body: Container(
        child:Padding(
          padding: const EdgeInsets.fromLTRB(35, 250, 35, 5),
               child: Text(
                  """
"Guidelines for your events can be found on the orion website.

 Your P.O.C.s will be happy to handle all your queries."
                  """,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontSize: 25,
                        color: Tools.multiColors[Random().nextInt(4)],
                      ),
                ),
             ),
        ), title: 'FAQ',
      );
  }
}
