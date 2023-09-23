import 'package:flutter/material.dart';
import 'package:widgets/widgets/visibility2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widget Test',
      // home: BannerWidget(),
      // home: BottomModalSheetWidget(),
      // home: ReorderableListViewWidget(),
      // home: CheckBoxWidget(),
      // home: ContextMenuWidget(),
      // home: TableWidget(),
      // home: AlertDialogWidget(),
      // home: CardWidget(),
      // home: DatePickerWidget(),
      // home: TimePickerWidget(),
      // home: DateRangePickerWidget(),
      // home: SlideToDeleteWidget(),
      // home: DrawerWidget(),
      // home: PopUpMenuButtonWidget(),
      // home: FloatingActionButtonWidget(),
      // home: FormWidget(),
      // home: TextFormFieldWidget(),
      // home: ChoiceChipWidget(),
      // home: FadeInImageWidget(),
      // home: FutureBuilderWidget(),
      // home: GridViewWidget(),
      // home: GridTileWidget(),
      // home: ListViewWidget(),
      // home: ListTileWidget(),
      // home: NavigationBarWidget(),
      // home: SwitchWidget(),
      // home: TabBarWidget(),
      // home: RadioListTileWidget(),
      // home: RefreshIndicatorWidget(),
      // home: SelectableWidget(),
      // home: SnackbarWidget(),
      // home: LayoutBuilderWidget(),
      // home: FittedBoxWidget(),
      // home: ShaderMaskWidget(),
      // home: DropDownWidget(),
      // home: ContainerWidget(),
      // home: VisibilityWidget(),
      // home: CopyContentWidget(),
      // home: WrapWidget(),
      home: VisibilityWidget2(),
    );
  }
}
