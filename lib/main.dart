import 'package:flutter/material.dart';
import 'package:sphere_maps_flutter/sphere_maps_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sphere Plugin Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'sphere Plugin Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final sphere = GlobalKey<SphereMapState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: SphereMapWidget(
            key: sphere,
            apiKey: "test2022",
            bundleId: "",
            // TODO 4 *** Event ***
            eventName: [
              // TODO 4.1 ready
              JavascriptChannel(
                  name: 'Ready',
                  onMessageReceived: (_) {
                    // sphere.currentState?.call("Layers.language", args: ['en']);
                  }),
              // TODO 4.2 location
              // JavascriptChannel(
              //     name: 'Location',
              //     onMessageReceived: (_) async {
              //       final location = await sphere.currentState?.call("location");
              //       if (location != null) {
              //         debugPrint(location.toString());
              //       }
              //     }),
              // TODO 4.2 overlay click
              // JavascriptChannel(
              //     name: 'OverlayClick',
              //     onMessageReceived: (message) {
              //       debugPrint(message.message);
              //     }),
            ],
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 88),
          child: FloatingActionButton(
            onPressed: () {
              // TODO *** 1. Layers ***
              // TODO 1.1 language
              // sphere.currentState?.call("Layers.language", args: ['en']);
              // TODO 1.1 setBase
              // final hybrid =
              //     sphere.currentState?.SphereStatic("Layers", "HYBRID");
              // if (hybrid != null) {
              //   sphere.currentState?.call("Layers.setBase", args: [hybrid]);
              // }
              // TODO 1.2 setBase
              // final traffic =
              //     sphere.currentState?.SphereStatic("Layers", "TRAFFIC");
              // if (traffic != null) {
              //   sphere.currentState?.call("Layers.add", args: [traffic]);
              // }
              // TODO 1.3 wmts
              // final layer = sphere.currentState?.SphereObject("Layer", args: [
              //   "bluemarble_terrain",
              //   {
              //     "type":
              //         sphere.currentState?.SphereStatic("LayerType", "WMTS_REST"),
              //     "url": "https://ms.longdo.com/mapproxy/wmts",
              //     "srs": "GLOBAL_WEBMERCATOR",
              //     "opacity": 0.5,
              //     "zoomRange": {"min": 1, "max": 9},
              //   }
              // ]);
              // TODO 1.3.1 add
              // if (layer != null) {
              //   sphere.currentState?.call("Layers.add", args: [layer]);
              // }
              // TODO 1.3.2 remove
              // if (layer != null) {
              //   sphere.currentState?.call("Layers.remove", args: [layer]);
              // }
              // TODO 1.4 clear
              // sphere.currentState?.call("Layers.clear");
              // TODO *** 2. Map ***
              // TODO 2.1 zoom
              // sphere.currentState?.call("zoom", args: [10.5]);
              // TODO 2.2 zoomRange
              // sphere.currentState?.call("zoomRange", args: [
              //   {
              //     'min': 1,
              //     'max': 20,
              //   }
              // ]);
              // TODO 2.3 location
              // sphere.currentState?.call("location", args: [
              //   {
              //     'lon': 100,
              //     'lat': 10,
              //   }
              // ]);
              // TODO 2.4 bound
              // sphere.currentState?.call("bound", args: [
              //   {
              //     'minLon': 97.3758964376,
              //     'minLat': 5.69138418215,
              //     'maxLon': 105.589038527,
              //     'maxLat': 20.4178496363,
              //   }
              // ]);
              // TODO 2.5 move
              // sphere.currentState?.call("move", args: [
              //   {
              //     'x': 100,
              //     'y': 100,
              //   }
              // ]);
              // TODO 2.6 rotate
              // sphere.currentState?.call("rotate", args: [45]);
              // TODO 2.7 pitch
              // sphere.currentState?.call("pitch", args: [50]);
              // TODO 2.8 enableFilter
              // final filter = sphere.currentState?.SphereStatic("Filter", "Dark");
              // if (filter != null) {
              //   sphere.currentState?.call("enableFilter", args: [filter]);
              // }
              // TODO *** 3. Overlays ***
              // TODO 3.3 clear
              // sphere.currentState?.call("Overlays.clear");
              // TODO 3.1 Marker
              // final marker = sphere.currentState?.SphereObject("Marker", args: [
              //   {
              //     'lon': 100,
              //     'lat': 15,
              //   },
              // TODO 3.1.1 Pop up
              // {
              //   'title': 'Title',
              //   'detail': 'Detail',
              //   // }
              // ]);
              // if (marker != null) {
              //   sphere.currentState?.call("Overlays.add", args: [marker]);
              // Future.delayed(const Duration(seconds: 3), () {
              //   sphere.currentState?.call("Overlays.remove", args: [marker]);
              // });
              // }
              // TODO 3.2 Geometry
              // TODO 3.2.1 Line
              // final line = sphere.currentState?.SphereObject("Polyline", args: [
              //   [
              //     {'lon': 90, 'lat': 10},
              //     {'lon': 100, 'lat': 20},
              //   ],
              // TODO 3.2.1.1 Dash
              // {
              //   'lineStyle':
              //       sphere.currentState?.SphereStatic("LineStyle", "Dashed")
              // }
              // ]);
              // if (line != null) {
              //   sphere.currentState?.call("Overlays.add", args: [line]);
              // }
              // TODO 3.2.2 Polygon
              // var polygon = sphere.currentState?.SphereObject(
              //   "Polygon",
              //   args: [
              //     [
              //       {
              //         "lon": 99,
              //         "lat": 14,
              //       },
              //       {
              //         "lon": 100,
              //         "lat": 13,
              //       },
              //       {
              //         "lon": 102,
              //         "lat": 13,
              //       },
              //       {
              //         "lon": 103,
              //         "lat": 14,
              //       }
              //     ],
              //   ],
              // );
              // if (polygon != null) {
              //   sphere.currentState?.call("Overlays.add", args: [polygon]);
              // }
              // TODO 3.2.3 Circle
              // var circle = sphere.currentState?.SphereObject(
              //   "Circle",
              //   args: [
              //     {
              //       "lon": 101,
              //       "lat": 15,
              //     },
              //     1,
              //     {
              //       "lineWidth": 2,
              //       "lineColor": "rgba(255, 0, 0, 0.8)",
              //       "fillColor": "rgba(255, 0, 0, 0.4)",
              //     }
              //   ],
              // );
              // if (circle != null) {
              //   sphere.currentState?.call("Overlays.add", args: [circle]);
              // }
              // TODO 3.2.4 Dot
              // var dot = sphere.currentState?.SphereObject(
              //   "Dot",
              //   args: [
              //     {
              //       "lon": 100.540574,
              //       "lat": 13.714765,
              //     },
              //     {
              //       "lineWidth": 20,
              //     }
              //   ],
              // );
              // if (dot != null) {
              //   sphere.currentState?.call("Overlays.add", args: [dot]);
              // }
              // TODO 3.2.5 Donut
              // var donut = sphere.currentState?.SphereObject(
              //   "Polygon",
              //   args: [
              //     [
              //       {
              //         "lon": 101,
              //         "lat": 15,
              //       },
              //       {
              //         "lon": 105,
              //         "lat": 15,
              //       },
              //       {
              //         "lon": 103,
              //         "lat": 12,
              //       },
              //       null,
              //       {
              //         "lon": 103,
              //         "lat": 14.9,
              //       },
              //       {
              //         "lon": 102.1,
              //         "lat": 13.5,
              //       },
              //       {
              //         "lon": 103.9,
              //         "lat": 13.5,
              //       }
              //     ],
              //     {
              //       "lon": 100.540574,
              //       "lat": 13.714765,
              //     },
              //   ],
              // );
              // if (donut != null) {
              //   sphere.currentState?.call("Overlays.add", args: [donut]);
              // }
              // TODO 3.2.6 Rectangle
              // var rectangle = sphere.currentState?.SphereObject(
              //   "Rectangle",
              //   args: [
              //     {
              //       "lon": 100.617,
              //       "lat": 13.896,
              //     },
              //     {
              //       "width": 2,
              //       "height": 1,
              //     }
              //   ],
              // );
              // if (rectangle != null) {
              //   sphere.currentState?.call("Overlays.add", args: [rectangle]);
              // }
            },
            child: const Icon(Icons.auto_awesome),
          ),
        ));
  }
}
