import 'package:flutter/material.dart';

void showActionButtonsSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (_) => const _ActionButtonsSheet(),
  );
}

class _ActionButtonsSheet extends StatelessWidget {
  const _ActionButtonsSheet();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _ActionButton(text: "Edit Post", color: Colors.blue, onTap: () {}),
          const SizedBox(height: 12),
          _ActionButton(text: "Delete Story", color: Colors.red, onTap: () {}),
          const SizedBox(height: 12),
          _ActionButton(
            text: "Cancel",
            color: Colors.grey.shade300,
            textColor: Colors.black,
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback onTap;

  const _ActionButton({
    required this.text,
    required this.color,
    required this.onTap,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
        ),
        onPressed: onTap,
        child: Text(text),
      ),
    );
  }
}
