import 'package:flutter/material.dart';

class SnackBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Are you over 18?'),
            onPressed: () => _navigateAndShowResult(context),
          ),
        ),
      );

  void _navigateAndShowResult(BuildContext context) async {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    final result = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => _resultScreen(context)));
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('$result')));
  }

  Widget _resultScreen(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Close the screen and return "Yep!" as the result.
                Navigator.pop(context, 'You can register :)');
              },
              child: Text('Yes'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, 'Wait till you are 18!'),
              child: Text('No'),
            ),
          ],
        ),
      ),
    );
  }
}
