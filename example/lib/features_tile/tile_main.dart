import 'package:flutter/material.dart';
import '../sticky_headers/sticky_headers/widget.dart';
import './tile_one_line.dart';
import './tile_two_line.dart';
import './tile_loading.dart';
import './tile_leading.dart';
import './tile_trailing.dart';
import './tile_builder.dart';
import './tile_validation.dart';
import '../features_header.dart';
import '../keep_alive.dart';

class FeaturesTile extends StatelessWidget {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: scrollController,
      child: ListView(
        controller: scrollController,
        addAutomaticKeepAlives: true,
        children: <Widget>[
          StickyHeader(
            header: const FeaturesHeader('One Line'),
            content: FeaturesTileOneLine(),
          ),
          StickyHeader(
            header: const FeaturesHeader('Two Line'),
            content: FeaturesTileTwoLine(),
          ),
          StickyHeader(
            header: const FeaturesHeader('Leading Widget'),
            content: FeaturesTileLeading(),
          ),
          StickyHeader(
            header: const FeaturesHeader('Custom Trailing Widget'),
            content: FeaturesTileTrailing(),
          ),
          KeepAliveWidget(
            child: StickyHeader(
              header: const FeaturesHeader('Loading Stats'),
              content: FeaturesTileLoading(),
            ),
          ),
          KeepAliveWidget(
            child: StickyHeader(
              header: const FeaturesHeader('Custom Tile Builder'),
              content: FeaturesTileBuilder(),
            ),
          ),
          KeepAliveWidget(
            child: StickyHeader(
              header: const FeaturesHeader('Validation'),
              content: FeaturesTileValidation(),
            ),
          ),
        ],
      ),
    );
  }
}
