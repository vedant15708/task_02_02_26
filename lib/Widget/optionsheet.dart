import 'package:flutter/material.dart';

void showOptionsSheet(BuildContext context) {
  showModalBottomSheet(context: context, builder: (_) => const _OptionsSheet());
}

class _OptionsSheet extends StatelessWidget {
  const _OptionsSheet();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        children: [
          _sheetTile(icon: Icons.share, title: "share"),
          _sheetTile(icon: Icons.link, title: "Get Link"),
          _sheetTile(icon: Icons.edit, title: "Edit"),
          _sheetTile(icon: Icons.delete_outline, title: "Delete"),
        ],
      ),
    );
  }
}

class _sheetTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isDestructive;

  const _sheetTile({
    required this.icon,
    required this.title,
    this.isDestructive = false,
  });

  @override
  Widget build(BuildContext context) {
    final color = isDestructive ? Colors.red : Colors.black87;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(title, style: TextStyle(color: color)),
      onTap: () => Navigator.pop(context),
    );
  }
}
