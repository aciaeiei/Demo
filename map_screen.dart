import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'booking_screen.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(13.7563, 100.5018);
  final Set<Marker> _markers = {
    Marker(
      markerId: const MarkerId('parking1'),
      position: const LatLng(13.757, 100.502),
      infoWindow: const InfoWindow(title: 'ที่จอดรถ A'),
    ),
    Marker(
      markerId: const MarkerId('parking2'),
      position: const LatLng(13.755, 100.503),
      infoWindow: const InfoWindow(title: 'ที่จอดรถ B'),
    ),
  };

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('สมาร์ท พาร์คกิ้ง เดโม่')),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 15.0,
        ),
        markers: _markers,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const BookingScreen()),
          );
        },
        label: const Text('จองที่จอด'),
        icon: const Icon(Icons.local_parking),
      ),
    );
  }
}
