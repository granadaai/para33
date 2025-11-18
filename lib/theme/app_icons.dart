import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

class AppIcons {
  static BitmapDescriptor? jeepIcon;

  static Future<void> loadIcons() async {
    jeepIcon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(),
      'assets/JEEP_LOGO.png', // This will now be 24x24 pixels
    );
  }

  static BitmapDescriptor getJeepIconForZoom(double zoom) => jeepIcon ?? BitmapDescriptor.defaultMarker;
  static BitmapDescriptor? get jeepIconSmall => jeepIcon;
  static BitmapDescriptor? get jeepIconMedium => jeepIcon;
  static BitmapDescriptor? get jeepIconLarge => jeepIcon;
}