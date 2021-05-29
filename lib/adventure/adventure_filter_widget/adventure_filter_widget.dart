import 'package:flutter/material.dart';
import 'package:grand_chase_farm_guide/adventure/adventure_bottom_sheet_widget/adventure_bottom_sheet_item_model.dart';
import 'package:grand_chase_farm_guide/adventure/adventure_bottom_sheet_widget/adventure_bottom_sheet_widget.dart';
import 'package:grand_chase_farm_guide/adventure/adventure_page_controller.dart';
import 'package:grand_chase_farm_guide/adventure/adventure_filter_widget/filter_button_widget.dart';
import 'package:grand_chase_farm_guide/core/app_shadows.dart';
import 'package:grand_chase_farm_guide/core/text_styles.dart';
import 'package:grand_chase_farm_guide/shared/enum/drop_types_enum.dart';
import 'package:provider/provider.dart';

class AdventureFilterWidget extends StatelessWidget {
  const AdventureFilterWidget({
    Key? key,
  }) : super(key: key);

  _showModalBottomSheet({
    required BuildContext context,
    required String title,
    required List<AdventureBottomSheetItemModel> items,
    required Function(DropTypes) onFilterChanged,
  }) {
    showModalBottomSheet(
      context: context,
      builder: (_) => AdventureBottomSheetWidget(
        title: title,
        items: items,
        onFilterChanged: onFilterChanged,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AdventurePageController>(
      builder: (consumerContext, controller, __) => Container(
        height: 110,
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          boxShadow: AppShadows.boxShadow02dp,
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
          color: Colors.white,
        ),
        child: Material(
          color: Theme.of(context).cardColor,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(Icons.settings_backup_restore),
                  tooltip: "Redefinir filtros",
                  onPressed: () {
                    controller.evostoneFilterSelected = DropTypes.none;
                    controller.sCardFilterSelected = DropTypes.none;
                    controller.bovFilterSelected = false;
                  },
                  splashRadius: 24,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Filtros",
                          style: TextStyles.subtitle1,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FilterButtonWidget(
                              text: Text("Pedra de\nEvolução",
                                  style: TextStyles.body2),
                              icon: Icon(Icons.filter_list),
                              isFilterApplied:
                                  controller.evostoneFilterSelected !=
                                      DropTypes.none,
                              onTap: () {
                                controller.evostoneFilterToggle();
                                _showModalBottomSheet(
                                  context: context,
                                  title: "Pedra de Evolução",
                                  items: [
                                    AdventureBottomSheetItemModel(
                                      title: "Assalto",
                                      dropType: DropTypes.assaultSoulstone,
                                      selected:
                                          controller.evostoneFilterSelected ==
                                              DropTypes.assaultSoulstone,
                                    ),
                                    AdventureBottomSheetItemModel(
                                      title: "Atirador",
                                      dropType: DropTypes.rangerSoulstone,
                                      selected:
                                          controller.evostoneFilterSelected ==
                                              DropTypes.rangerSoulstone,
                                    ),
                                    AdventureBottomSheetItemModel(
                                      title: "Guardião",
                                      dropType: DropTypes.tankSoulstone,
                                      selected:
                                          controller.evostoneFilterSelected ==
                                              DropTypes.tankSoulstone,
                                    ),
                                    AdventureBottomSheetItemModel(
                                      title: "Mago",
                                      dropType: DropTypes.mageSoulstone,
                                      selected:
                                          controller.evostoneFilterSelected ==
                                              DropTypes.mageSoulstone,
                                    ),
                                    AdventureBottomSheetItemModel(
                                      title: "Suporte",
                                      dropType: DropTypes.healerSoulstone,
                                      selected:
                                          controller.evostoneFilterSelected ==
                                              DropTypes.healerSoulstone,
                                    ),
                                  ],
                                  onFilterChanged: (dropType) {
                                    if (controller.evostoneFilterSelected ==
                                        dropType) {
                                      controller.evostoneFilterSelected =
                                          DropTypes.none;
                                    } else {
                                      controller.evostoneFilterSelected =
                                          dropType;
                                    }
                                  },
                                );
                              },
                            ),
                            FilterButtonWidget(
                              text: Text(
                                "Carta S",
                                style: TextStyles.body2,
                                textAlign: TextAlign.center,
                              ),
                              icon: Icon(Icons.filter_list),
                              isFilterApplied: controller.sCardFilterSelected !=
                                  DropTypes.none,
                              onTap: () {
                                controller.sCardFilterToggle();
                                _showModalBottomSheet(
                                  context: context,
                                  title: "Carta rank S",
                                  items: [
                                    AdventureBottomSheetItemModel(
                                      title: "Assalto",
                                      dropType: DropTypes.assaultSCard,
                                      selected:
                                          controller.sCardFilterSelected ==
                                              DropTypes.assaultSCard,
                                    ),
                                    AdventureBottomSheetItemModel(
                                      title: "Atirador",
                                      dropType: DropTypes.rangerSCard,
                                      selected:
                                          controller.sCardFilterSelected ==
                                              DropTypes.rangerSCard,
                                    ),
                                    AdventureBottomSheetItemModel(
                                      title: "Guardião",
                                      dropType: DropTypes.tankSCard,
                                      selected:
                                          controller.sCardFilterSelected ==
                                              DropTypes.tankSCard,
                                    ),
                                    AdventureBottomSheetItemModel(
                                      title: "Mago",
                                      dropType: DropTypes.mageSCard,
                                      selected:
                                          controller.sCardFilterSelected ==
                                              DropTypes.mageSCard,
                                    ),
                                    AdventureBottomSheetItemModel(
                                      title: "Suporte",
                                      dropType: DropTypes.healerSCard,
                                      selected:
                                          controller.sCardFilterSelected ==
                                              DropTypes.healerSCard,
                                    ),
                                  ],
                                  onFilterChanged: (dropType) {
                                    if (controller.sCardFilterSelected ==
                                        dropType) {
                                      controller.sCardFilterSelected =
                                          DropTypes.none;
                                    } else {
                                      controller.sCardFilterSelected = dropType;
                                    }
                                  },
                                );
                              },
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.bovFilterToggle();
                              },
                              child: Row(
                                children: [
                                  Checkbox(
                                    value: controller.bovFilterSelected,
                                    onChanged: (newValue) {
                                      controller.bovFilterSelected = newValue!;
                                    },
                                    visualDensity: VisualDensity(
                                      horizontal: VisualDensity.minimumDensity,
                                    ),
                                  ),
                                  Text(
                                    "Benção de\nValor",
                                    style: TextStyles.body2,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SliverAdventureFilterWidgetDelegate
    extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double _height = 110;
  SliverAdventureFilterWidgetDelegate({
    required this.child,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  double get maxExtent => _height;

  @override
  double get minExtent => _height;

  @override
  bool shouldRebuild(SliverAdventureFilterWidgetDelegate oldDelegate) {
    return child != oldDelegate.child;
  }
}
