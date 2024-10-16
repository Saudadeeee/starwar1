import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/star_wars_provider.dart';
import 'ship_detail_page.dart';

class ShipsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<StarWarsProvider>(context);
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (provider.isLoading) const CircularProgressIndicator(),
        if (!provider.isLoading && provider.ships.isNotEmpty)
          Expanded(
            child: Column(
              children: [
                const Text('Data loaded successfully', style: TextStyle(fontSize: 20)),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: provider.ships.length,
                    itemBuilder: (context, index) {
                      final ship = provider.ships[index];
                      return ListTile(
                        title: Text(ship.name),
                        subtitle: Text(ship.model),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ShipDetailPage(ship: ship)),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ElevatedButton(
          onPressed: () {
            provider.fetchShips();
          },
          child: Text('Fetch Ships'),
        ),
      ],
    );
  }
}
