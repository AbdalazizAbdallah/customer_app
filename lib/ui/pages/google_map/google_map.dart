import 'dart:async';
import 'dart:ui' as ui;

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
  late List<Marker> _markers = <Marker>[];
  double paddingInt = SizesApp.r140;

  @override
  void initState() {
    super.initState();
    rootBundle
        .loadString('assets/map_style.txt')
        .then((value) => _mapStyle = value);
    initialSetupMap();
  }

  @override
  Widget build(BuildContext context) {
    var edgeInsetsPadding = EdgeInsets.only(
      bottom: paddingInt,
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
              markers: Set<Marker>.of(_markers),
              initialCameraPosition: const CameraPosition(
                target: LatLng(31.518675, 34.437069),
                zoom: 16,
              ),
              mapToolbarEnabled: true,
              minMaxZoomPreference: const MinMaxZoomPreference(
                5,
                18,
              ),
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
                controller.setMapStyle(_mapStyle);
              },
              onCameraMove: (CameraPosition position) {
                _lastMapPosition = position.target;
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: SizesApp.r160,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        color: Colors.white,
                        height: SizesApp.r105,
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
                      top: 5,
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
                          SizedBox(
                            width: SizesApp.r20,
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
                          SizedBox(
                            width: SizesApp.r20,
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
    var byteCar = await gitByteUint8Imge(ImagesApp.carMarker);
    carMarkerIcon = BitmapDescriptor.fromBytes(byteCar);
    debugPrint('${carMarkerIcon}');
    var byteLocation = await gitByteUint8Imge(ImagesApp.locationMarkerIcon);
    locationMarkerIcon = BitmapDescriptor.fromBytes(byteLocation);

    _markers.add(Marker(
      markerId: MarkerId(const Uuid().v4()),
      visible: true,
      position: const LatLng(31.518672, 34.435603),
      draggable: true,
      icon: carMarkerIcon,
    ));
    setState(() {
      paddingInt = SizesApp.r160;
    });
    _markers.add(Marker(
      markerId: MarkerId(const Uuid().v4()),
      visible: true,
      position: const LatLng(31.518675, 34.437069),
      draggable: true,
      icon: locationMarkerIcon,
    ));
  }

  
  Future<Uint8List> gitByteUint8Imge(String path) async {
    ByteData car = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(
      car.buffer.asUint8List(),
      targetHeight: 100,
      targetWidth: 100,
    );
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

}
