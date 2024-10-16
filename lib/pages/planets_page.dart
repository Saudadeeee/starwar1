import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/star_wars_provider.dart';
import 'planet_detail_page.dart';

class PlanetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<StarWarsProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (provider.isLoading) const CircularProgressIndicator(),
        if (!provider.isLoading && provider.planets.isNotEmpty)
          Expanded(
            child: Column(
              children: [
                const Text('Data loaded successfully', style: TextStyle(fontSize: 20)),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: provider.planets.length,
                    itemBuilder: (context, index) {
                      final planet = provider.planets[index];
                      return ListTile(
                        title: Text(planet.name),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PlanetDetailPage(planet: planet)),
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
            provider.fetchPlanets();
          },
          child: Text('Fetch Planets'),
        ),
      ],
    );
  }
}
