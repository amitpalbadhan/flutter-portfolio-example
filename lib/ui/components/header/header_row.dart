import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:website/models/header_item.dart';

class HeaderRow extends StatelessWidget {
  final List<HeaderItem> headerItems;

  HeaderRow({
    Key? key,
    required this.headerItems,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: [
        Condition.largerThan(name: MOBILE),
      ],
      child: Container(
        margin: EdgeInsets.only(top: 15.0),
        child: Row(
          children: headerItems
              .map(
                (item) => item.isButton
                    ? Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Stack(
                            children: <Widget>[
                              Positioned.fill(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: <Color>[
                                        Color(0xFF0D47A1),
                                        Color(0xFF1976D2),
                                        Color(0xFF42A5F5),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 16.0,
                                    horizontal: 25.0,
                                  ),
                                  primary: Colors.white,
                                  textStyle: const TextStyle(fontSize: 18.0),
                                ),
                                onPressed: item.onTap,
                                child: Text(item.title),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Container(
                        margin: EdgeInsets.only(right: 5),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              vertical: 16.0,
                              horizontal: 25.0,
                            ),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 18.0),
                          ),
                          onPressed: item.onTap,
                          child: Text(item.title),
                        ),
                      ),
              )
              .toList(),
        ),
      ),
    );
  }
}
