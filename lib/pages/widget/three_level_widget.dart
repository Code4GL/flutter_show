import 'package:flutter/material.dart';

import 'package:flutter_show/components/language_change.dart';
import 'package:flutter_show/provider/language_provider.dart';
import 'package:provider/provider.dart';

import 'accessibility/exclude_semantics.dart';
import 'accessibility/merge_semantics.dart';
import 'accessibility/semantics.dart';
import 'animation/animated_align.dart';
import 'animation/animated_builder.dart';
import 'animation/animated_container.dart';
import 'animation/animated_cross_fade.dart';
import 'animation/animated_default_text_style.dart';
import 'animation/animated_list_state.dart';
import 'animation/animated_modal_barrier.dart';
import 'animation/animated_opacity.dart';
import 'animation/animated_physical_model.dart';
import 'animation/animated_positioned.dart';
import 'animation/animated_size.dart';
import 'animation/animated_widget.dart';
import 'animation/animated_widget_base_state.dart';
import 'animation/decorated_box_transition.dart';
import 'animation/fade_transition.dart';
import 'animation/hero.dart';
import 'animation/positioned_transition.dart';
import 'animation/rotation_transition.dart';
import 'animation/scale_transition.dart';
import 'animation/size_transition.dart';
import 'animation/slide_transition.dart';
import 'assets_widget/asset_bundle.dart';
import 'assets_widget/icon.dart';
import 'assets_widget/image.dart';
import 'assets_widget/raw_image.dart';
import 'async/future_builder.dart';
import 'async/stream_builder.dart';
import 'basic/appbar.dart';
import 'basic/column.dart';
import 'basic/container.dart';
import 'basic/elevated_button.dart';
import 'basic/flutter_logo.dart';
import 'basic/placeholder.dart';
import 'basic/row.dart';
import 'basic/scaffold.dart';
import 'cupertino/cupertino_action_sheet.dart';
import 'cupertino/cupertino_activity_indicator.dart';
import 'cupertino/cupertino_alert_dialog.dart';
import 'cupertino/cupertino_button.dart';
import 'cupertino/cupertino_context_menu.dart';
import 'cupertino/cupertino_date_picker.dart';
import 'cupertino/cupertino_dialog.dart';
import 'cupertino/cupertino_dialog_action.dart';
import 'cupertino/cupertino_fullscreen_dialog_transition.dart';
import 'cupertino/cupertino_navigation_bar.dart';
import 'cupertino/cupertino_page_scaffold.dart';
import 'cupertino/cupertino_page_transition.dart';
import 'cupertino/cupertino_picker.dart';
import 'cupertino/cupertino_popup_surface.dart';
import 'cupertino/cupertino_scrollbar.dart';
import 'cupertino/cupertino_search_text_field.dart';
import 'cupertino/cupertino_segmented_control.dart';
import 'cupertino/cupertino_slider.dart';
import 'cupertino/cupertino_sliding_segmented_control.dart';
import 'cupertino/cupertino_switch.dart';
import 'cupertino/cupertino_tab_bar.dart';
import 'cupertino/cupertino_tab_scaffold.dart';
import 'cupertino/cupertino_tab_view.dart';
import 'cupertino/cupertino_text_field.dart';
import 'cupertino/cupertino_timer_picker.dart';
import 'input/autocomplete.dart';
import 'input/form.dart';
import 'input/form_field.dart';
import 'input/raw_keyboard_listener.dart';
import 'interaction/absorb_pointer.dart';
import 'interaction/dismissible.dart';
import 'interaction/drag_target.dart';
import 'interaction/draggable.dart';
import 'interaction/draggable_scrollable_sheet.dart';
import 'interaction/gesture_detector.dart';
import 'interaction/ignore_pointer.dart';
import 'interaction/long_press_draggable.dart';
import 'interaction/navigator.dart';
import 'interaction/scrollable.dart';
import 'layout/align.dart';
import 'layout/aspect_ratio.dart';
import 'layout/baseline.dart';
import 'layout/center.dart';
import 'layout/constrained_box.dart';
import 'layout/cupertino_sliver_navigation_bar.dart';
import 'layout/custom_multi_child_layout.dart';
import 'layout/custom_single_child_layout.dart';
import 'layout/expanded.dart';
import 'layout/fitted_box.dart';
import 'layout/flow.dart';
import 'layout/fractionally_sized_box.dart';
import 'layout/indexed_stack.dart';
import 'layout/intrinsic_height.dart';
import 'layout/intrinsic_width.dart';
import 'layout/layout_builder.dart';
import 'layout/limited_box.dart';
import 'layout/list_body.dart';
import 'layout/offstage.dart';
import 'layout/overflow_box.dart';
import 'layout/sized_box.dart';
import 'layout/sized_overflow_box.dart';
import 'layout/sliver_app_bar.dart';
import 'layout/sliver_child_builder_delegate.dart';
import 'layout/sliver_child_list_delegate.dart';
import 'layout/sliver_fixed_extent_list.dart';
import 'layout/sliver_grid.dart';
import 'layout/sliver_list.dart';
import 'layout/sliver_padding.dart';
import 'layout/sliver_persistent_header.dart';
import 'layout/sliver_to_box_adapter.dart';
import 'layout/stack.dart';
import 'layout/table.dart';
import 'layout/wrap.dart';
import 'material/alert_dialog.dart';
import 'material/bottom_navigation_bar.dart';
import 'material/bottom_sheet.dart';
import 'material/card.dart';
import 'material/checkbox.dart';
import 'material/chip.dart';
import 'material/circular_progress_indicator.dart';
import 'material/data_table.dart';
import 'material/date_picker.dart';
import 'material/divider.dart';
import 'material/drawer.dart';
import 'material/dropdown_button.dart';
import 'material/expansion_panel.dart';
import 'material/floating_action_button.dart';
import 'material/icon_button.dart';
import 'material/linear_progress_indicator.dart';
import 'material/list_tile.dart';
import 'material/material_app.dart';
import 'material/outlined_button.dart';
import 'material/popup_menu_button.dart';
import 'material/radio.dart';
import 'material/simple_dialog.dart';
import 'material/slider.dart';
import 'material/snack_bar.dart';
import 'material/stepper.dart';
import 'material/switch.dart';
import 'material/tab_bar.dart';
import 'material/tab_bar_view.dart';
import 'material/tab_controller.dart';
import 'material/tab_page_selector.dart';
import 'material/text_button.dart';
import 'material/text_field.dart';
import 'material/tooltip.dart';
import 'material/widgets_app.dart';
import 'painting/backdrop_filter.dart';
import 'painting/clip_oval.dart';
import 'painting/clip_path.dart';
import 'painting/clip_rect.dart';
import 'painting/custom_paint.dart';
import 'painting/decorated_box.dart';
import 'painting/fractional_translation.dart';
import 'painting/opacity.dart';
import 'painting/rotated_box.dart';
import 'painting/transform.dart';
import 'scrolling/custom_scroll_view.dart';
import 'scrolling/grid_view.dart';
import 'scrolling/list_view.dart';
import 'scrolling/nested_scroll_view.dart';
import 'scrolling/notification_listener.dart';
import 'scrolling/page_view.dart';
import 'scrolling/refresh_indicator.dart';
import 'scrolling/reorderable_list_view.dart';
import 'scrolling/scroll_configuration.dart';
import 'scrolling/scrollbar.dart';
import 'scrolling/single_child_scroll_view.dart';
import 'styling/media_query.dart';
import 'styling/padding.dart';
import 'styling/theme.dart';
import 'text/default_text_style.dart';
import 'text/rich_text.dart';
import 'text/text.dart';

class ThreeLevelWidgetPage extends StatelessWidget {
  ThreeLevelWidgetPage({
    Key? key,
    required this.title,
    required this.introductionEN,
    required this.introductionCN,
    required this.routeName,
    required this.imagePath,
    required this.docPath,
    required this.inheritance,
    required this.constructors,
  }) : super(key: key);

  final String title;
  final String introductionEN;
  final String introductionCN;
  final String routeName;
  final String imagePath;
  final String docPath;
  final String inheritance;
  final String constructors;

  // routeName路由映射
  final _routes = {
    // Accessibility
    'Widget/Accessibility/ExcludeSemantics': ExcludeSemanticsPage(),
    'Widget/Accessibility/MergeSemantics': MergeSemanticsPage(),
    'Widget/Accessibility/Semantics': SemanticsPage(),
    // Animation
    'Widget/Animation/AnimatedAlign': AnimatedAlignPage(),
    'Widget/Animation/AnimatedBuilder': AnimatedBuilderPage(),
    'Widget/Animation/AnimatedContainer': AnimatedContainerPage(),
    'Widget/Animation/AnimatedCrossFade': AnimatedCrossFadePage(),
    'Widget/Animation/AnimatedDefaultTextStyle': AnimatedDefaultTextStylePage(),
    'Widget/Animation/AnimatedListState': AnimatedListStatePage(),
    'Widget/Animation/AnimatedModalBarrier': AnimatedModalBarrierPage(),
    'Widget/Animation/AnimatedOpacity': AnimatedOpacityPage(),
    'Widget/Animation/AnimatedPhysicalModel': AnimatedPhysicalModelPage(),
    'Widget/Animation/AnimatedPositioned': AnimatedPositionedPage(),
    'Widget/Animation/AnimatedSize': AnimatedSizePage(),
    'Widget/Animation/AnimatedWidget': AnimatedWidgetPage(),
    'Widget/Animation/AnimatedWidgetBaseState': AnimatedWidgetBaseStatePage(),
    'Widget/Animation/DecoratedBoxTransition': DecoratedBoxTransitionPage(),
    'Widget/Animation/FadeTransition': FadeTransitionPage(),
    'Widget/Animation/Hero': HeroPage(),
    'Widget/Animation/PositionedTransition': PositionedTransitionPage(),
    'Widget/Animation/RotationTransition': RotationTransitionPage(),
    'Widget/Animation/ScaleTransition': ScaleTransitionPage(),
    'Widget/Animation/SizeTransition': SizeTransitionPage(),
    'Widget/Animation/SlideTransition': SlideTransitionPage(),
    // Assets
    'Widget/Assets/AssetBundle': AssetBundlePage(),
    'Widget/Assets/Icon': IconPage(),
    'Widget/Assets/Image': ImagePage(),
    'Widget/Assets/RawImage': RawImagePage(),
    // Async
    'Widget/Async/FutureBuilder': FutureBuilderPage(),
    'Widget/Async/StreamBuilder': StreamBuilderPage(),
    // Basic
    'Widget/Basic/Appbar': AppbarPage(),
    'Widget/Basic/Column': ColumnPage(),
    'Widget/Basic/Container': ContainerPage(),
    'Widget/Basic/ElevatedButton': ElevatedButtonPage(),
    'Widget/Basic/FlutterLogo': FlutterLogoPage(),
    'Widget/Basic/Icon': IconPage(),
    'Widget/Basic/Image': ImagePage(),
    'Widget/Basic/Placeholder': PlaceholderPage(),
    'Widget/Basic/Row': RowPage(),
    'Widget/Basic/Scaffold': ScaffoldPage(),
    'Widget/Basic/Text': TextPage(),
    // Cupertino
    'Widget/Cupertino/CupertinoActionSheet': CupertinoActionSheetPage(),
    'Widget/Cupertino/CupertinoActivityIndicator':
        CupertinoActivityIndicatorPage(),
    'Widget/Cupertino/CupertinoAlertDialog': CupertinoAlertDialogPage(),
    'Widget/Cupertino/CupertinoButton': CupertinoButtonPage(),
    'Widget/Cupertino/CupertinoContextMenu': CupertinoContextMenuPage(),
    'Widget/Cupertino/CupertinoDatePicker': CupertinoDatePickerPage(),
    'Widget/Cupertino/CupertinoDialog': CupertinoDialogPage(),
    'Widget/Cupertino/CupertinoDialogAction': CupertinoDialogActionPage(),
    'Widget/Cupertino/CupertinoFullscreenDialogTransition':
        CupertinoFullscreenDialogTransitionPage(),
    'Widget/Cupertino/CupertinoNavigationBar': CupertinoNavigationBarPage(),
    'Widget/Cupertino/CupertinoPageScaffold': CupertinoPageScaffoldPage(),
    'Widget/Cupertino/CupertinoPageTransition': CupertinoPageTransitionPage(),
    'Widget/Cupertino/CupertinoPicker': CupertinoPickerPage(),
    'Widget/Cupertino/CupertinoPopupSurface': CupertinoPopupSurfacePage(),
    'Widget/Cupertino/CupertinoScrollbar': CupertinoScrollbarPage(),
    'Widget/Cupertino/CupertinoSearchTextField': CupertinoSearchTextFieldPage(),
    'Widget/Cupertino/CupertinoSegmentedControl':
        CupertinoSegmentedControlPage(),
    'Widget/Cupertino/CupertinoSlider': CupertinoSliderPage(),
    'Widget/Cupertino/CupertinoSlidingSegmentedControl':
        CupertinoSlidingSegmentedControlPage(),
    'Widget/Cupertino/CupertinoSliverNavigationBar':
        CupertinoSliverNavigationBarPage(),
    'Widget/Cupertino/CupertinoSwitch': CupertinoSwitchPage(),
    'Widget/Cupertino/CupertinoTabBar': CupertinoTabBarPage(),
    'Widget/Cupertino/CupertinoTabScaffold': CupertinoTabScaffoldPage(),
    'Widget/Cupertino/CupertinoTabView': CupertinoTabViewPage(),
    'Widget/Cupertino/CupertinoTextField': CupertinoTextFieldPage(),
    'Widget/Cupertino/CupertinoTimerPicker': CupertinoTimerPickerPage(),
    // Input
    'Widget/Input/Autocomplete': AutocompletePage(),
    'Widget/Input/Form': FormPage(),
    'Widget/Input/FormField': FormFieldPage(),
    'Widget/Input/RawKeyboardListener': RawKeyboardListenerPage(),
    // Interaction
    'Widget/Interaction/AbsorbPointer': AbsorbPointerPage(),
    'Widget/Interaction/Dismissible': DismissiblePage(),
    'Widget/Interaction/DragTarget': DragTargetPage(),
    'Widget/Interaction/Draggable': DraggablePage(),
    'Widget/Interaction/DraggableScrollableSheet':
        DraggableScrollableSheetPage(),
    'Widget/Interaction/GestureDetector': GestureDetectorPage(),
    'Widget/Interaction/IgnorePointer': IgnorePointerPage(),
    'Widget/Interaction/LongPressDraggable': LongPressDraggablePage(),
    'Widget/Interaction/Scrollable': ScrollablePage(),
    'Widget/Interaction/Hero': HeroPage(),
    'Widget/Interaction/Navigator': NavigatorPage(),
    // Layout
    'Widget/Layout/Align': AlignPage(),
    'Widget/Layout/AspectRatio': AspectRatioPage(),
    'Widget/Layout/Baseline': BaselinePage(),
    'Widget/Layout/Center': CenterPage(),
    'Widget/Layout/ConstrainedBox': ConstrainedBoxPage(),
    'Widget/Layout/Container': ContainerPage(),
    'Widget/Layout/CustomSingleChildLayout': CustomSingleChildLayoutPage(),
    'Widget/Layout/Expanded': ExpandedPage(),
    'Widget/Layout/FittedBox': FittedBoxPage(),
    'Widget/Layout/FractionallySizedBox': FractionallySizedBoxPage(),
    'Widget/Layout/IntrinsicHeight': IntrinsicHeightPage(),
    'Widget/Layout/IntrinsicWidth': IntrinsicWidthPage(),
    'Widget/Layout/LimitedBox': LimitedBoxPage(),
    'Widget/Layout/Offstage': OffstagePage(),
    'Widget/Layout/OverflowBox': OverflowBoxPage(),
    'Widget/Layout/Padding': PaddingPage(),
    'Widget/Layout/SizedBox': SizedBoxPage(),
    'Widget/Layout/SizedOverflowBox': SizedOverflowBoxPage(),
    'Widget/Layout/Transform': TransformPage(),
    'Widget/Layout/Column': ColumnPage(),
    'Widget/Layout/CustomMultiChildLayout': CustomMultiChildLayoutPage(),
    'Widget/Layout/Flow': FlowPage(),
    'Widget/Layout/GridView': GridViewPage(),
    'Widget/Layout/IndexedStack': IndexedStackPage(),
    'Widget/Layout/LayoutBuilder': LayoutBuilderPage(),
    'Widget/Layout/ListBody': ListBodyPage(),
    'Widget/Layout/ListView': ListViewPage(),
    'Widget/Layout/Row': RowPage(),
    'Widget/Layout/Stack': StackPage(),
    'Widget/Layout/Table': TablePage(),
    'Widget/Layout/Wrap': WrapPage(),
    'Widget/Layout/CupertinoSliverNavigationBar':
        CupertinoSliverNavigationBarPage(),
    'Widget/Layout/CustomScrollView': CustomScrollViewPage(),
    'Widget/Layout/SliverAppBar': SliverAppBarPage(),
    'Widget/Layout/SliverChildBuilderDelegate':
        SliverChildBuilderDelegatePage(),
    'Widget/Layout/SliverChildListDelegate': SliverChildListDelegatePage(),
    'Widget/Layout/SliverFixedExtentList': SliverFixedExtentListPage(),
    'Widget/Layout/SliverGrid': SliverGridPage(),
    'Widget/Layout/SliverList': SliverListPage(),
    'Widget/Layout/SliverPadding': SliverPaddingPage(),
    'Widget/Layout/SliverPersistentHeader': SliverPersistentHeaderPage(),
    'Widget/Layout/SliverToBoxAdapter': SliverToBoxAdapterPage(),
    // Material
    'Widget/Material/Appbar': AppbarPage(),
    'Widget/Material/BottomNavigationBar': BottomNavigationBarPage(),
    'Widget/Material/Drawer': DrawerPage(),
    'Widget/Material/MaterialApp': MaterialAppPage(),
    'Widget/Material/Scaffold': ScaffoldPage(),
    'Widget/Material/SliverAppBar': SliverAppBarPage(),
    'Widget/Material/TabBar': TabBarPage(),
    'Widget/Material/TabBarView': TabBarViewPage(),
    'Widget/Material/TabController': TabControllerPage(),
    'Widget/Material/TabPageSelector': TabPageSelectorPage(),
    'Widget/Material/WidgetsApp': WidgetsAppPage(),
    'Widget/Material/DropdownButton': DropdownButtonPage(),
    'Widget/Material/ElevatedButton': ElevatedButtonPage(),
    'Widget/Material/FloatingActionButton': FloatingActionButtonPage(),
    'Widget/Material/IconButton': IconButtonPage(),
    'Widget/Material/OutlinedButton': OutlinedButtonPage(),
    'Widget/Material/PopupMenuButton': PopupMenuButtonPage(),
    'Widget/Material/TextButton': TextButtonPage(),
    'Widget/Material/Checkbox': CheckboxPage(),
    'Widget/Material/DatePicker': DatePickerPage(),
    'Widget/Material/Radio': RadioPage(),
    'Widget/Material/Slider': SliderPage(),
    'Widget/Material/Switch': SwitchPage(),
    'Widget/Material/TextField': TextFieldPage(),
    'Widget/Material/AlertDialog': AlertDialogPage(),
    'Widget/Material/BottomSheet': BottomSheetPage(),
    'Widget/Material/ExpansionPanel': ExpansionPanelPage(),
    'Widget/Material/SimpleDialog': SimpleDialogPage(),
    'Widget/Material/SnackBar': SnackBarPage(),
    'Widget/Material/Card': CardPage(),
    'Widget/Material/Chip': ChipPage(),
    'Widget/Material/CircularProgressIndicator':
        CircularProgressIndicatorPage(),
    'Widget/Material/DataTable': DataTablePage(),
    'Widget/Material/GridView': GridViewPage(),
    'Widget/Material/Icon': IconPage(),
    'Widget/Material/Image': ImagePage(),
    'Widget/Material/LinearProgressIndicator': LinearProgressIndicatorPage(),
    'Widget/Material/Tooltip': TooltipPage(),
    'Widget/Material/Divider': DividerPage(),
    'Widget/Material/ListTile': ListTilePage(),
    'Widget/Material/Stepper': StepperPage(),
    // Painting
    'Widget/Painting/BackdropFilter': BackdropFilterPage(),
    'Widget/Painting/ClipOval': ClipOvalPage(),
    'Widget/Painting/ClipPath': ClipPathPage(),
    'Widget/Painting/ClipRect': ClipRectPage(),
    'Widget/Painting/CustomPaint': CustomPaintPage(),
    'Widget/Painting/DecoratedBox': DecoratedBoxPage(),
    'Widget/Painting/FractionalTranslation': FractionalTranslationPage(),
    'Widget/Painting/Opacity': OpacityPage(),
    'Widget/Painting/RotatedBox': RotatedBoxPage(),
    'Widget/Painting/Transform': TransformPage(),
    // Scrolling
    'Widget/Scrolling/CustomScrollView': CustomScrollViewPage(),
    'Widget/Scrolling/DraggableScrollableSheet': DraggableScrollableSheetPage(),
    'Widget/Scrolling/GridView': GridViewPage(),
    'Widget/Scrolling/ListView': ListViewPage(),
    'Widget/Scrolling/NestedScrollView': NestedScrollViewPage(),
    'Widget/Scrolling/NotificationListener': NotificationListenerPage(),
    'Widget/Scrolling/PageView': PageViewPage(),
    'Widget/Scrolling/RefreshIndicator': RefreshIndicatorPage(),
    'Widget/Scrolling/ReorderableListView': ReorderableListViewPage(),
    'Widget/Scrolling/ScrollConfiguration': ScrollConfigurationPage(),
    'Widget/Scrolling/Scrollable': ScrollablePage(),
    'Widget/Scrolling/Scrollbar': ScrollbarPage(),
    'Widget/Scrolling/SingleChildScrollView': SingleChildScrollViewPage(),
    // Styling
    'Widget/Styling/MediaQuery': MediaQueryPage(),
    'Widget/Styling/Padding': PaddingPage(),
    'Widget/Styling/Theme': ThemePage(),
    // Text
    'Widget/Text/DefaultTextStyle': DefaultTextStylePage(),
    'Widget/Text/RichText': RichTextPage(),
    'Widget/Text/Text': TextPage(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        actions: <Widget>[
          LanguageChange(),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 类名
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Consumer<LanguageProvider>(
              builder: (context, LanguageProvider languageProvider, _) => Text(
                languageProvider.lang == "zh" ? introductionCN : introductionEN,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            // 继承关系
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Consumer<LanguageProvider>(
                    builder: (context, LanguageProvider languageProvider, _) =>
                        Text(
                      languageProvider.lang == "zh" ? '继承关系' : 'Inheritance',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: 5,
                  color: Colors.orange[100],
                ),
                Text(
                  inheritance,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            // 构造函数
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Consumer<LanguageProvider>(
                    builder: (context, LanguageProvider languageProvider, _) =>
                        Text(
                      languageProvider.lang == "zh" ? '构造函数' : 'Constructors',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: 5,
                  color: Colors.orange[100],
                ),
                Text(
                  constructors,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            // 示例
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Consumer<LanguageProvider>(
                builder: (context, LanguageProvider languageProvider, _) =>
                    Text(
                  languageProvider.lang == "zh" ? '示例' : 'Example',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ),
            Divider(
              thickness: 1,
              height: 5,
              color: Colors.orange[100],
            ),
            Container(
              padding: EdgeInsets.only(top: 5, bottom: 50),
              child: _routes[routeName],
            ),
          ],
        ),
      ),
    );
  }
}
