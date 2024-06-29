import 'package:flutter/material.dart';
import 'package:mai_practice/components/constants.dart';

class QuestionTile extends StatefulWidget {
  const QuestionTile({
    super.key,
    required this.title,
    required this.children,
  });

  final String title;
  final List<Widget> children;

  @override
  State<QuestionTile> createState() => _QuestionTileState();
}

class _QuestionTileState extends State<QuestionTile> {
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(
        bottom: 15
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 1,
          color: kWhite
        )
      ),
      child: AnimatedCrossFade(
        duration: const Duration(milliseconds: 200),
        firstChild: _buildClosedTile(),
        secondChild: _buildOpenTile(),
        crossFadeState: _isExpanded
            ? CrossFadeState.showSecond
            : CrossFadeState.showFirst,
      ),
    );
  }

  Widget _buildClosedTile() {
    return ListTile(
      title: Text(widget.title, style: const TextStyle(color: kWhite, fontSize: 16),),
      contentPadding: EdgeInsets.zero,
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
    );
  }

  Widget _buildOpenTile() {
    return ExpansionTile(
      title: Text(widget.title, style: const TextStyle(color: kWhite, fontSize: 16),),
      tilePadding: EdgeInsets.zero,
      iconColor: kWhite,
      collapsedIconColor: kWhite,
      childrenPadding: EdgeInsets.zero,
      expandedAlignment: Alignment.centerLeft,
      children: [
        Column(
          children: [
            const SizedBox(height: 30,),
            ...widget.children,
          ],
        )
      ]
    );
  }
}
