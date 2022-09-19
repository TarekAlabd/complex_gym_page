import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_task/pages/member_details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Click here to start'),
          onPressed: () => Navigator.of(context).push(
            CupertinoPageRoute(
              builder: (_) => MemberDetailsPage(),
            ),
          ),
        ),
      ),
    );
  }
}
