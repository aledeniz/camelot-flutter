import 'package:flutter/material.dart';

import 'logged_screen.dart';
import 'package:rousseau_vote/src/config/app_constants.dart';

// Widget to use for loggedin screens. It checks if the user is logged in. If
// not it redirects to the login screen. It also provide the default rousseau
// toolbar
class RousseauLoggedScaffold extends StatelessWidget {
  final Widget body;
  const RousseauLoggedScaffold(this.body);

  @override
  Widget build(BuildContext context) {
    return LoggedScreen(
        Scaffold(
          appBar: AppBar(title: Text(TOOLBAR_TITLE)),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                body
              ],
            ),
          ),
        )
    );
  }
}
