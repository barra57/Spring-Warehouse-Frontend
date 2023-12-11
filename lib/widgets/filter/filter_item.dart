import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterItem extends StatefulWidget {
  final String text;
  final bool selected;
  final VoidCallback onSelect;
  final VoidCallback onDeselect;

  const FilterItem(this.text,
      {super.key,
      required this.selected,
      required this.onSelect,
      required this.onDeselect});

  @override
  State<FilterItem> createState() => _FilterItemState();
}

class _FilterItemState extends State<FilterItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.selected ? widget.onDeselect : widget.onSelect,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            color: widget.selected
                ? Theme.of(context).colorScheme.primary
                : Colors.transparent,
            borderRadius: BorderRadius.circular(5),
            border: widget.selected
                ? Border.all(
                    color: Theme.of(context).colorScheme.primary, width: 2)
                : Border.all(
                    color: Theme.of(context).colorScheme.secondary, width: 2)),
        child: Text(
          widget.text,
          style: GoogleFonts.inter(
            textStyle: TextStyle(
                color: widget.selected
                    ? Colors.white
                    : Theme.of(context).colorScheme.secondary),
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
