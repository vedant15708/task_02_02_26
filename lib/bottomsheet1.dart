import 'package:flutter/material.dart';
import 'Widget/actionbuttonsheet.dart';
import 'Widget/optionsheet.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'bottom sheet example 1',
      home: BottomSheetDemo1(),
    );
  }
}

class BottomSheetDemo1 extends StatefulWidget {
  const BottomSheetDemo1({super.key});

  @override
  State<BottomSheetDemo1> createState() => _BottomSheetDemo1State();
}

class _BottomSheetDemo1State extends State<BottomSheetDemo1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurpleAccent),
      body: Center(
        child: Column(
          mainAxisAlignment: .start,
          children: [
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => showOptionsSheet(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent,
                textStyle: TextStyle(color: Colors.white),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "Bottom Sheet 1",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => showActionButtonsSheet(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              child: const Text(
                "Bottom Sheet 2",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _show(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              child: const Text(
                "Bottom Sheet 3",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.amber.shade300,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) {
        return Container(
          height: 250,
          child: Column(
            mainAxisAlignment: .center,
            children: const [
              Center(
                child: Text(
                  'Breathe in... Breathe out...',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
