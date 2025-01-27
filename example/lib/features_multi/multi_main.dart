import 'package:flutter/material.dart';
import '../sticky_headers/sticky_headers/widget.dart';
import './multi_page.dart';
import './multi_sheet.dart';
import './multi_popup.dart';
import './multi_chips.dart';
import './multi_switches.dart';
import '../features_header.dart';
import '../keep_alive.dart';

class FeaturesMulti extends StatelessWidget {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: scrollController,
      child: ListView(
        controller: scrollController,
        addAutomaticKeepAlives: true,
        children: <Widget>[
          KeepAliveWidget(
            child: StickyHeader(
              header: const FeaturesHeader('Open in Full Page'),
              content: FeaturesMultiPage(),
            ),
          ),
          KeepAliveWidget(
            child: StickyHeader(
              header: const FeaturesHeader('Open in Bottom Sheet'),
              content: FeaturesMultiSheet(),
            ),
          ),
          KeepAliveWidget(
            child: StickyHeader(
              header: const FeaturesHeader('Open in Popup Dialog'),
              content: FeaturesMultiPopup(),
            ),
          ),
          KeepAliveWidget(
            child: StickyHeader(
              header: const FeaturesHeader('Use Chips'),
              content: FeaturesMultiChips(),
            ),
          ),
          KeepAliveWidget(
            child: StickyHeader(
              header: const FeaturesHeader('Use Switches'),
              content: FeaturesMultiSwitches(),
            ),
          ),
        ],
      ),
    );
  }
}
