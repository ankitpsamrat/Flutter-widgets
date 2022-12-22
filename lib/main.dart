import 'package:flutter/material.dart';
import '/widgets/snackbar.dart';

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
      // home: BottomSheetWidget(),
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
      home: SnackbarWidget(),
      // home: LayoutBuilderWidget(),
      // home: FittedBoxWidget(),
    );
  }
}
