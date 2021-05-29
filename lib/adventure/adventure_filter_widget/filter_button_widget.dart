import 'package:flutter/material.dart';

class FilterButtonWidget extends StatelessWidget {
  final Icon icon;
  final Text text;
  final VoidCallback onTap;
  final bool isFilterApplied;
  const FilterButtonWidget({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
    this.isFilterApplied = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onTap,
      icon: icon,
      label: text,
      style: ButtonStyle(
        backgroundColor: isFilterApplied
            ? MaterialStateProperty.all(
                Theme.of(context).buttonColor.withOpacity(0.6))
            : MaterialStateProperty.all(Theme.of(context).buttonColor),
        elevation: MaterialStateProperty.all(0),
        foregroundColor: MaterialStateProperty.all(
            Theme.of(context).textTheme.subtitle1!.color),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
        ),
        overlayColor:
            MaterialStateProperty.all(Color.fromRGBO(33, 33, 33, 0.1)),
      ),
    );
  }
}
