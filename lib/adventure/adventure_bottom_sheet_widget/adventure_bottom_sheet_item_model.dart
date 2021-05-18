import 'package:grand_chase_farm_guide/shared/enum/drop_types_enum.dart';

class AdventureBottomSheetItemModel {
  final String title;
  final DropTypes dropType;
  bool selected;

  AdventureBottomSheetItemModel({
    required this.title,
    required this.dropType,
    this.selected = false,
  });
}
