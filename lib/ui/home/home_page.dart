import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ImageHeader(),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          'Beach Retreat. A relaxing stay with sea views.',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.solidStar,
                              color: Colors.red,
                              size: 14,
                            ),
                            SizedBox(
                              width: 6.0,
                            ),
                            Text(
                              '4.97 (74)',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(
                              width: 6.0,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: FaIcon(
                                FontAwesomeIcons.solidCircle,
                                color: Colors.red,
                                size: 2,
                              ),
                            ),
                            SizedBox(
                              width: 6.0,
                            ),
                            FaIcon(
                              FontAwesomeIcons.medal,
                              color: Colors.red,
                              size: 14,
                            ),
                            SizedBox(
                              width: 6.0,
                            ),
                            Text(
                              'Superhost',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(
                              width: 6.0,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: FaIcon(
                                FontAwesomeIcons.solidCircle,
                                color: Colors.red,
                                size: 2,
                              ),
                            ),
                            SizedBox(
                              width: 6.0,
                            ),
                            Flexible(
                              child: Text(
                                'Kent, England, United Kingdom',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24.0,
                        ),
                        Container(
                          height: 2.0,
                          width: double.infinity,
                          color: Colors.black12,
                        ),
                        SizedBox(
                          height: 24.0,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Tiny house',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                        ),
                        Row(
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'hosted by Kay',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0),
                              ),
                            ),
                            // Align(
                            //   alignment: Alignment.bottomRight,
                            //   child: Text('test'),
                            // )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ImageHeader extends StatefulWidget {
  final controller = PageController(
    initialPage: 0,
  );

  @override
  _ImageHeaderState createState() => _ImageHeaderState();
}

class _ImageHeaderState extends State<ImageHeader> {
  int pageNum = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Stack(
        children: [
          PageView(
            controller: widget.controller,
            scrollDirection: Axis.horizontal,
            onPageChanged: (int page) {
              setState(() {
                pageNum = page + 1;
              });
            },
            children: [
              Image.asset(
                'assets/images/airbnb_outside_1.jpg',
                height: 100,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/airbnb_living_room_1.jpg',
                height: 100,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/airbnb_living_room_2.jpg',
                height: 100,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/airbnb_kitchen_1.jpg',
                height: 100,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/airbnb_bedroom_1.jpg',
                height: 100,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/airbnb_garden_1.jpg',
                height: 100,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: CircleIconButton(
              FaIcon(
                FontAwesomeIcons.arrowLeft,
                size: 16.0,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: CircleIconButton(
              FaIcon(
                FontAwesomeIcons.heart,
                size: 16.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 52, 0),
            child: Align(
              alignment: Alignment.topRight,
              child: CircleIconButton(
                FaIcon(
                  FontAwesomeIcons.shareAlt,
                  size: 16.0,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.75),
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                  child: Text(
                    '$pageNum / 6',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CircleIconButton extends StatelessWidget {
  final FaIcon icon;
  CircleIconButton(this.icon);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: 40.0,
        height: 40.0,
        child: new RawMaterialButton(
          shape: new CircleBorder(),
          fillColor: Colors.white,
          elevation: 0.0,
          child: icon,
          onPressed: () {},
        ),
      ),
    );
  }
}
