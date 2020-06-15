import 'package:flutter/material.dart';

class BulletPointWidget extends StatelessWidget {
  final _text;

  BulletPointWidget(this._text);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _textTheme = _theme.textTheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
              height: 5,
              width: 5,
              decoration: new BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              )),
        ),
        Expanded(
          flex: 9,
          child: Text(
            _text,
            style: TextStyle(
              fontSize: _textTheme.bodyText2.fontSize,
              fontFamily: _textTheme.headline6.fontFamily,
              color: _textTheme.headline6.color
            ),
          ),
        ),
      ],
    );
  }
}
