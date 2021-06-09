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
    Key key,
    this.title,
    this.introductionEN,
    this.introductionCN,
    this.routeName,
    this.imagePath,
    this.docPath,
    this.inheritance,
    this.constructors,
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
              height: 40,
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Consumer<LanguageProvider>(
              builder: (context, LanguageProvider languageProvider, _) => Text(
                languageProvider.lang == "zh" ? introductionCN : introductionEN,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                ),
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
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
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
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
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
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
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
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
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
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
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
