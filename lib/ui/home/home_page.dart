import 'package:airbnb_clone/data/PropertyDetail.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatelessWidget {
  final PropertyDetail propertyDetail;
  MyHomePage({Key key, this.propertyDetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ImageHeader(),
                Flexible(
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
                            TitleSection(
                              averageScore: '4.95',
                              numOfReviews: '106',
                              isSuperHost: true,
                              vagueDisplayAddress:
                                  'Kent, England, United Kingdom',
                            ),
                            DividerRow(),
                            SubtitleSection(
                                description: 'Tiny house',
                                hostFirstName: 'Bean',
                                hostAvatar:
                                    'https://pheebzeatz.files.wordpress.com/2015/06/mr-bean.jpg?w=640',
                                maxGuests: "2",
                                numBedrooms: "1",
                                numBeds: "1",
                                numBathrooms: "1"),
                            DividerRow(),
                            TravelRestrictionsSection(),
                            DividerRow(),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 6),
              ),
            ],
          ),
          height: 80.0,
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        'Add dates for prices',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.solidStar,
                            color: Colors.red,
                            size: 14,
                          ),
                          Text(
                            '4.97',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '(74)',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: RaisedButton(
                    color: Colors.red,
                    onPressed: () {},
                    child: Text(
                      'Check availability',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TravelRestrictionsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155.0,
      child: Row(
        children: [
          Container(
            width: 10.0,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12, width: 2.0),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 8.0),
                    child: Text(
                      'Travel Restrictions',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
                    child: Text(
                        'Due to COVID-19, there are government restrictions in place which may affect your trabel plans.'),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0),
                    child: RawMaterialButton(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onPressed: () {
                        // TODO
                        print('Travel restrictions find out more clicked');
                      },
                      child: Text(
                        'Find out more',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  final String averageScore;
  final String numOfReviews;
  final bool isSuperHost;
  final String vagueDisplayAddress;
  TitleSection(
      {@required this.averageScore,
      @required this.numOfReviews,
      @required this.isSuperHost,
      @required this.vagueDisplayAddress});

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
        InterpunctDivider(),
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
        InterpunctDivider(),
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

class SubtitleSection extends StatelessWidget {
  final String description;
  final String hostFirstName;
  final String hostAvatar;
  final String maxGuests;
  final String numBedrooms;
  final String numBeds;
  final String numBathrooms;
  SubtitleSection(
      {@required this.description,
      @required this.hostFirstName,
      @required this.hostAvatar,
      @required this.maxGuests,
      @required this.numBedrooms,
      @required this.numBeds,
      @required this.numBathrooms});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    description ?? '',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'hosted by $hostFirstName',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 45.0,
                height: 45.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(hostAvatar),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16.0,
        ),
        Row(
          children: [
            Text('$maxGuests guests'),
            InterpunctDivider(),
            Text('$numBedrooms bedroom'),
            InterpunctDivider(),
            Text('$numBeds bed'),
            InterpunctDivider(),
            Text('$numBathrooms bathroom'),
          ],
        )
      ],
    );
  }
}

class InterpunctDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
