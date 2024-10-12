import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tripmate/Screens/tourist_details_page.dart';
import 'package:tripmate/controller/nearby_places_controller.dart';

class NearbyPlaces extends StatelessWidget {
  final NearbyPlacesController controller = Get.put(NearbyPlacesController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      } else if (controller.nearbyPlaces.isEmpty) {
        return Center(child: Text('No nearby places found'));
      } else {
        return ListView.builder(
          itemCount: controller.nearbyPlaces.length,
          itemBuilder: (context, index) {
            final place = controller.nearbyPlaces[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                height: 135,
                width: double.infinity, // Ensure the card takes full width
                child: Card(
                  elevation: 0.4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TouristDetailsPage(
                            image: place['image'],
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              place['image'],
                              height: 120, // Added height constraint
                              width: 130,  // Added width constraint
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  place['name'],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(place['location']),
                                const SizedBox(height: 10),
                                Text("Category: " + (place['tour_places'].isNotEmpty ? "Tour Place" : "Other")),
                                const Spacer(),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow.shade700,
                                      size: 14,
                                    ),
                                    const Text(
                                      "4.5",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      }
    });
  }
}
