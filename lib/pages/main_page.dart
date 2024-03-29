import 'package:flutter/material.dart';

import '../constants/strings.dart';
import '../constants/dimension.dart';

import '../bean/route_bean.dart';

import 'basic_app_bar.dart';
import 'tab_bar_and_app_bar.dart';
import 'container_test_page.dart';
import 'grid_view_page.dart';
import 'bottom_app_bar_page.dart';
import 'fade_animation_page.dart';
import 'input_test_page.dart';
import 'data_loader_page.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  final _pageNames = [
    'Basic AppBar',
    'TabBar & AppBar',
    'Container Test',
    'GrideView Test',
    'BottomAppBar Page',
    'FadeAnimation Page',
    'InputTest Page',
    'DataLoader Page',
  ];
  final _itemData = <RouteBean>[];

  void _initData(BuildContext context) {
    _itemData.clear();
    _itemData.add(RouteBean(
        _pageNames[0], (context) => BasicAppBar(title: _pageNames[0])));
    _itemData.add(RouteBean(
        _pageNames[1], (context) => TabBarAndAppBar(title: _pageNames[1])));
    _itemData.add(RouteBean(
        _pageNames[2], (context) => ContainerTestPage(title: _pageNames[2])));
    _itemData.add(RouteBean(
        _pageNames[3], (context) => GridViewPage(title: _pageNames[3])));
    _itemData.add(RouteBean(
        _pageNames[4], (context) => BottomAppBarPage(title: _pageNames[4])));
    _itemData.add(RouteBean(
        _pageNames[5], (context) => FadeAnimationPage(title: _pageNames[5])));
    _itemData.add(RouteBean(
        _pageNames[6], (context) => InputTestPage(title: _pageNames[6])));
    _itemData.add(RouteBean(
        _pageNames[7], (context) => DataLoaderPage(title: _pageNames[7])));
  }

  @override
  Widget build(BuildContext context) {
    _initData(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.home),
        centerTitle: true,
        elevation: Dimension.ELEVATION_TITLE,
      ),
      body: Container(
        child: _buildNavigationList(context),
      ),
    );
  }

  Widget _buildNavigationList(_context) {
    return ListView.builder(
      itemCount: _itemData.length * 2,
      itemBuilder: (context, index) => index.isOdd
          ? const Divider(height: Dimension.DIVIDE_HEIGHT)
          : ListTile(
              title: Text(_itemData[index ~/ 2].toString()),
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: _itemData[index ~/ 2].builder)),
            ),
    ).build(_context);
  }
}
