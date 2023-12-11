import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:whizware/widgets/filter/filter_item.dart';

class Filter extends StatefulWidget {
  final List<String> labels;

  const Filter({super.key, required this.labels});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  final ScrollController scrollController = ScrollController();

  late List<bool> selectedList;

  void _select(index) {
    setState(() {
      selectedList = List.generate(selectedList.length, (index) => false);
      selectedList[index] = true;
    });
  }

  void _deselect(index) {
    setState(() {
      selectedList[index] = false;
    });
  }

  List<FilterItem> _generateItem() {
    return widget.labels
        .asMap()
        .map((key, value) => MapEntry(
              key,
              FilterItem(
                value,
                selected: selectedList[key],
                onSelect: () => _select(key),
                onDeselect: () => _deselect(key),
              ),
            ))
        .values
        .toList();
  }

  @override
  void initState() {
    setState(() {
      selectedList = List.generate(widget.labels.length, (index) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerSignal: (event) {
        if (event is PointerScrollEvent) {
          final offset = event.scrollDelta.dy;
          setState(() {
            scrollController.jumpTo(scrollController.offset + (offset * 0.1));
          });
        }
      },
      child: SingleChildScrollView(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        child: Container(
          child: Row(
            children: _generateItem(),
          ),
        ),
      ),
    );
  }
}
