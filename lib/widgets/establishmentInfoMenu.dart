import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EstablishmentInfomenu extends StatefulWidget {
  final String infoName;
  final String infoContent;
  final Icon icon;

  EstablishmentInfomenu({
    super.key,
    required this.infoName,
    required this.infoContent,
    required this.icon,
  });

  @override
  _EstablishmentInfomenuState createState() => _EstablishmentInfomenuState();
}

class _EstablishmentInfomenuState extends State<EstablishmentInfomenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent), // Supprime les traits
            child: ExpansionTile(
              leading: widget.icon,
              title: Text(
                widget.infoName,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    widget.infoContent,
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
