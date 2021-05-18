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
                Colors.deepPurple[100],
              )
            : MaterialStateProperty.all(
                Color.fromRGBO(33, 33, 33, 0.08),
              ),
        elevation: MaterialStateProperty.all(0),
        foregroundColor: MaterialStateProperty.all(
          Color.fromRGBO(0, 0, 0, 0.87),
        ),
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
