import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grand_chase_farm_guide/adventure/adventure_bottom_sheet_widget/adventure_bottom_sheet_item_model.dart';
import 'package:grand_chase_farm_guide/core/text_styles.dart';
import 'package:grand_chase_farm_guide/shared/enum/drop_types_enum.dart';
import 'package:grand_chase_farm_guide/shared/util/drop_types_util.dart';

class AdventureBottomSheetWidget extends StatefulWidget {
  final String title;
  final List<AdventureBottomSheetItemModel> items;
  final void Function(DropTypes) onFilterChanged;
  const AdventureBottomSheetWidget({
    Key? key,
    required this.title,
    required this.items,
    required this.onFilterChanged,
  }) : super(key: key);

  @override
  _AdventureBottomSheetWidgetState createState() =>
      _AdventureBottomSheetWidgetState();
}

class _AdventureBottomSheetWidgetState
    extends State<AdventureBottomSheetWidget> {
  late DropTypes selectedItem;

  @override
  void initState() {
    super.initState();
    int index = widget.items.indexWhere((item) => item.selected);
    if (index == -1)
      selectedItem = DropTypes.none;
    else
      selectedItem = widget.items.elementAt(index).dropType;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      child: Container(
        color: Theme.of(context).cardColor,
        height: 370,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 15, right: 20, bottom: 15, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Filtro",
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).textTheme.bodyText1!.color,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 4),
                    Text(
                      widget.title,
                      style: TextStyles.body2,
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
              ),
            ),
            Divider(
              height: 1,
              thickness: 1.22,
            ),
            ...widget.items.map(
              (item) => ListTile(
                title: Text(item.title, style: TextStyles.subtitle2),
                leading: Image.asset(
                  DropTypesUtil.getDropImageAsset(item.dropType),
                  width: 40,
                ),
                selectedTileColor: Theme.of(context)
                    .appBarTheme
                    .backgroundColor!
                    .withOpacity(0.8),
                selected: selectedItem == item.dropType,
                onTap: () {
                  setState(() {
                    selectedItem = selectedItem == item.dropType
                        ? DropTypes.none
                        : item.dropType;
                  });
                  widget.onFilterChanged(item.dropType);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
