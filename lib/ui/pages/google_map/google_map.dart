import 'dart:async';

import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uuid/uuid.dart';

class MapSample extends StatefulWidget {
  const MapSample({super.key});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(31.5219219, 34.6112582),
    zoom: 10,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  late String _mapStyle;
  var markers2 = <Marker>{
    // const Marker(
    //   markerId: MarkerId('fdjklg'),
    //   visible: true,
    //   position: LatLng(31.0279993, 35.013154),
    //   draggable: true,
    // )
  };

  late LatLng _lastMapPosition;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    rootBundle.loadString('assets/map_style.txt').then((string) {
      _mapStyle = string;
    });
  }

  var appBar2 = AppBar(
    backgroundColor: ColorsApp.transparent,
    elevation: 0,
    title: Text(
      'Location',
      style: StylesApp.headline6.copyWith(
        fontWeight: FontWeight.w600,
      ),
    ),
    centerTitle: true,
    leading: InkResponse(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.all(SizesApp.r10),
        child: CircleAvatar(
          backgroundColor: ColorsApp.white,
          child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 5),
            child: Icon(
              Icons.arrow_back_ios,
              color: ColorsApp.primary,
              size: 20,
            ),
          ),
        ),
      ),
    ),
    actions: [
      InkResponse(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.all(SizesApp.r10),
          child: CircleAvatar(
            backgroundColor: ColorsApp.white,
            child: Icon(
              Icons.phone,
              color: ColorsApp.primary,
              size: 20,
            ),
          ),
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    var edgeInsetsPadding = EdgeInsets.only(
      bottom: 150,
      top:
          appBar2.preferredSize.height + MediaQuery.of(context).viewPadding.top,
    );
    var edgeInsets = EdgeInsets.zero;
    return Scaffold(
      appBar: appBar2,
      extendBodyBehindAppBar: true,
      body: SizedBox.expand(
        child: Stack(
          alignment: Alignment.center,
          children: [
            GoogleMap(
              mapType: MapType.normal,
              indoorViewEnabled: true,
              buildingsEnabled: true,
              trafficEnabled: true,
              padding: edgeInsetsPadding,
              circles: {
                const Circle(
                  circleId: CircleId('CircleId1'),
                  fillColor: Colors.white,
                  radius: 5000,
                  center: LatLng(31.0279993, 35.013154),
                  strokeWidth: 4,
                  strokeColor: Colors.black,
                  visible: true,
                ),
              },
              compassEnabled: true,
              liteModeEnabled: false,
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
              zoomControlsEnabled: false,
              markers: markers2,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
                controller.setMapStyle(_mapStyle);

                setState(() {
                  edgeInsets = edgeInsetsPadding;
                  print('object');
                });
              },
              onCameraMove: (CameraPosition position) {
                _lastMapPosition = position.target;
              },
            ),
            Positioned(
              top: appBar2.preferredSize.height,
              bottom: 150,
              child: const Center(
                child: Icon(Icons.location_pin),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 160,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        color: Colors.white,
                        height: 100,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: SizesApp.r40, vertical: SizesApp.r30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Delivery Addres',
                                style: StylesApp.subtitle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'statusa ,city,street 1213 box454',
                                style: StylesApp.subtitle2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: EdgeInsets.all(SizesApp.r10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'TIME',
                                    style: StylesApp.caption11.copyWith(
                                      color: ColorsApp.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '09 min',
                                    style: StylesApp.subtitle1.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: EdgeInsets.all(SizesApp.r10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'DISTANCE',
                                    style: StylesApp.caption11.copyWith(
                                      color: ColorsApp.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '9.4 mi',
                                    style: StylesApp.subtitle1.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: EdgeInsets.all(SizesApp.r10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'METHOD',
                                    style: StylesApp.caption11.copyWith(
                                      color: ColorsApp.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Car',
                                    style: StylesApp.subtitle1.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final GoogleMapController controller = await _controller.future;

          print(
              '(MediaQuery.of(context).size.width / 2).toInt()  ${MediaQuery.of(context).size.width} ${(MediaQuery.of(context).size.width / 2).toInt()}');
          print(
              '(MediaQuery.of(context).size.height - 150  / 2).toInt()    ${((MediaQuery.of(context).size.height - 150 - appBar2.preferredSize.height) / 2).toInt()}');
          LatLng lat = await controller.getLatLng(
            ScreenCoordinate(
              x: (MediaQuery.of(context).size.width / 2).toInt(),
              y: ((MediaQuery.of(context).size.height -
                          150 -
                          appBar2.preferredSize.height) /
                      2)
                  .toInt(),
            ),
          );
          var uuid = const Uuid();
          bool status = markers2.add(
            Marker(
              markerId: MarkerId(uuid.v4()),
              visible: true,
              position: _lastMapPosition,
              draggable: true,
            ),
          );
          print('${lat}  $status  ${markers2}');

          setState(() {});
        },
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
    print(_mapStyle);
    controller.setMapStyle(_mapStyle);
  }
}
