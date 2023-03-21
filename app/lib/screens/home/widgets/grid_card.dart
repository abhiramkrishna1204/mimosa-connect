import 'package:flutter/material.dart';

import '../../../utils/theme.dart';

class GridCard extends StatelessWidget {
  const GridCard({
    super.key,
    required this.title,
    this.icon,
    this.onTap,
  });

  final String title;
  final Widget? icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              /// [ title ] is the title of the card, where you use it as accordingly
              Text(title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: MimosaTheme.black)),
              const Spacer(),

              /// [ icon ] can be called as a widget, [ if needed only. ]
              icon!
            ]),
          )),
    );
  }
}
