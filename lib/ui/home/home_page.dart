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
                        MetaInfoRow(
                          avgScore: '4.95',
                          numOfReviews: '106',
                          isSuperHost: true,
                          vagueDisplayAddress: 'Kent, England, United Kingdom',
                        ),
                        DividerRow(),
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

class MetaInfoRow extends StatelessWidget {
  final String averageScore;
  final String numOfReviews;
  final bool isSuperHost;
  final String vagueDisplayAddress;
  MetaInfoRow(
      {@required String avgScore,
      @required String numOfReviews,
      @required isSuperHost,
      @required vagueDisplayAddress})
      : this.averageScore = avgScore,
        this.numOfReviews = numOfReviews,
        this.isSuperHost = isSuperHost,
        this.vagueDisplayAddress = vagueDisplayAddress;

  @override
  Widget build(BuildContext context) {
    return Row(
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
          '$averageScore ($numOfReviews)',
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
          child: RawMaterialButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () {
              // TODO
              print('Address clicked');
            },
            child: Text(
              vagueDisplayAddress ?? '',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DividerRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
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
              HeaderPagerImage(
                url: 'assets/images/airbnb_1.jpg',
              ),
              HeaderPagerImage(
                url: 'assets/images/airbnb_2.jpg',
              ),
              HeaderPagerImage(
                url: 'assets/images/airbnb_3.jpg',
              ),
              HeaderPagerImage(
                url: 'assets/images/airbnb_5.jpg',
              ),
              HeaderPagerImage(
                url: 'assets/images/airbnb_4.jpg',
              ),
              HeaderPagerImage(
                url: 'assets/images/airbnb_6.jpg',
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

class HeaderPagerImage extends StatelessWidget {
  final String url;
  HeaderPagerImage({@required String url}) : this.url = url;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      url,
      height: 100,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
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
