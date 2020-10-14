import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(FictbankApp());

class FictbankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fictbank',
      theme: ThemeData(
        primaryColor: Color(0xFF262626),
        accentColor: Color(0xFFFAFAFA),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Color(0xFFFAFAFA),
          ),
        ),
      ),
      home: WireTransferList(),
    );
  }
}

class WireTransferList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color(0xFF262626),
        child: Column(
          children: <Widget>[
            Container(
              height: 120.0,
            ),
            SizedBox(
              height: 400.0,
              child: ListView(
                children: <Widget>[
                  WireTransferItemWrapper(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WireTransferItemWrapper extends StatelessWidget {
  const WireTransferItemWrapper({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Container(
        width: 374.00,
        height: 109.00,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            WireTransferItemCard(),
            WireTransferItemDate(),
          ],
        ),
      ),
    );
  }
}

class WireTransferItemDate extends StatelessWidget {
  const WireTransferItemDate({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '05/20/20 at 2:45PM',
      style: TextStyle(
        fontSize: 16.0,
        color: Color(0xFFFAFAFA),
      ),
    );
  }
}

class WireTransferItemCard extends StatelessWidget {
  const WireTransferItemCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        height: 80.00,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color(0xFFFAFAFA),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Text(
                      'Income',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'RobotoSlab',
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF4A8A3F),
                      ),
                    ),
                  ),
                  Text(
                    '\$65.00',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'RobotoSlab',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF333333),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 14.0),
                    child: Text(
                      'Kyle D.',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'RobotoSlab',
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF333333),
                      ),
                    ),
                  ),
                  Container(
                    height: 53.0,
                    width: 53.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
