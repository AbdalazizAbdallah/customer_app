import 'dart:async';

import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/images_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:customer_app/ui/pages/google_map/widgets/app_bar_widget.dart';
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
  late String _mapStyle;
  late BitmapDescriptor carMarkerIcon;
  late BitmapDescriptor locationMarkerIcon;
  late LatLng _lastMapPosition;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // BitmapDescriptor.fromAssetImage(
    //   const ImageConfiguration(
    //     size: Size(
    //       12,
    //       12,
    //     ),
    //   ),
    //   ImagesApp.carMarker,
    // ).then((value) => carMarkerIcon=value);
    // BitmapDescriptor.fromAssetImage(
    //   const ImageConfiguration(
    //     size: Size(
    //       12,
    //       12,
    //     ),
    //   ),
    //   ImagesApp.locationMarkerIcon,
    // ).then((value) => locationMarkerIcon=value);
    rootBundle
        .loadString('assets/map_style.txt')
        .then((value) => _mapStyle = value);
  }

  @override
  Widget build(BuildContext context) {
    var edgeInsetsPadding = EdgeInsets.only(
      bottom: 150,
      top: appBarGoogleMap.preferredSize.height +
          MediaQuery.of(context).viewPadding.top,
    );

    return Scaffold(
      appBar: appBarGoogleMap,
      extendBodyBehindAppBar: true,
      body: SizedBox.expand(
        child: Stack(
          alignment: Alignment.center,
          children: [
            GoogleMap(
              mapType: MapType.normal,
              padding: edgeInsetsPadding,
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
              markers: {
                Marker(
                  markerId: MarkerId(const Uuid().v4()),
                  visible: true,
                  position: const LatLng(31.5219219, 34.6112582),
                  draggable: true,
                  // icon: carMarkerIcon,
                ),
                Marker(
                  markerId: MarkerId(const Uuid().v4()),
                  visible: true,
                  position: const LatLng(31.698, 34.6112582),
                  draggable: true,
                  // icon: locationMarkerIcon,
                ),
              },
              initialCameraPosition: const CameraPosition(
                target: LatLng(31.5219219, 34.6112582),
                zoom: 10,
              ),
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
                controller.setMapStyle(_mapStyle);
              },
              onCameraMove: (CameraPosition position) {
                _lastMapPosition = position.target;
              },
            ),
            Positioned(
              top: appBarGoogleMap.preferredSize.height,
              bottom: 150,
              child: Center(
                child: Image.asset(
                  ImagesApp.locationMarkerIcon,
                ),
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
    );
  }

  Future<void> initialSetupMap() async {
    carMarkerIcon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(
        size: Size(
          12,
          12,
        ),
      ),
      ImagesApp.carMarker,
    );
    debugPrint('${carMarkerIcon}');
    locationMarkerIcon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(
        size: Size(
          12,
          12,
        ),
      ),
      ImagesApp.locationMarkerIcon,
    );
    _mapStyle = await rootBundle.loadString('assets/map_style.txt');
  }
}
