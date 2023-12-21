import 'package:flutter/material.dart';

class WrapWidgetDemo extends StatefulWidget {
  final String title = 'Wrap Chips';

  const WrapWidgetDemo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _WrapWidgetDemoState();
}

class _WrapWidgetDemoState extends State<WrapWidgetDemo> {

  late GlobalKey<ScaffoldState> _key;
  late List<String> _dynamicChips;

  @override
  void initState() {
    super.initState();
    _key = GlobalKey<ScaffoldState>();
    _dynamicChips = [
      'Health',
      'Food',
      'Nature',
      'Google',
      'Microsoft',
      'Amazon',
      'Na',
      'Microsoft',
      'Health',
      'Food',
      'Na',
      'Google',
      'Microsoft',
      'Amazon',
      'Microsoft'
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          dynamicChips(),
        ],
      ),
    );
  }
  dynamicChips() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Wrap(
            children: [
              Row(
                children: [
                  ...List.generate(
                      3,
                      (int index) => Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Chip(
                              padding: const EdgeInsets.all(12.0),
                              label: Text(_dynamicChips[index]),
                            ),
                          )),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      radius: 16.0,
                      child: Icon(Icons.more_horiz),
                    ),
                  ),
                ],
              ),
              ...List.generate(
                  _dynamicChips.length - 3,
                  (int index) => Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Chip(
                          padding: const EdgeInsets.all(12.0),
                          label: Text(_dynamicChips[index + 3]),
                        ),
                      )),
            ],
          ),
        ),
      ],
    );
  }
}