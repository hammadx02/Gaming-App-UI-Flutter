import 'package:flutter/cupertino.dart';
import 'package:gaming_app_ui/constants/colors.dart';

/// Flutter code sample for [CupertinoAlertDialog].

void main() => runApp(const AlertDialogApp());

class AlertDialogApp extends StatelessWidget {
  const AlertDialogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: AlertDialogExample(),
    );
  }
}

class AlertDialogExample extends StatelessWidget {
  const AlertDialogExample({super.key});

  // This shows a CupertinoModalPopup which hosts a CupertinoAlertDialog.
  void _showAlertDialog(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        
        title: const Text(
          'Phone number confirmation',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Poppins Medium',
            color: blackColor,
          ),
        ),
        content: const Text(
          'We\'ll send a verification code to the following number:',
          style: TextStyle(
            fontSize: 12,
            fontFamily: 'Poppins Regular',
            color: blackColor,
          ),
        ),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            /// This parameter indicates this action is the default,
            /// and turns the action's text to bold text.

            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Cancel',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Poppins Regular',
                color: themeColor,
              ),
            ),
          ),
          CupertinoDialogAction(
            /// This parameter indicates the action would perform
            /// a destructive action such as deletion, and turns
            /// the action's text color to red.

            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'OK',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Poppins Regular',
                color: themeColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('CupertinoAlertDialog Sample'),
      ),
      child: Center(
        child: CupertinoButton(
          onPressed: () => _showAlertDialog(context),
          child: const Text('CupertinoAlertDialog'),
        ),
      ),
    );
  }
}
