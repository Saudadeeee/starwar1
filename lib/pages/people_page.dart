import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/star_wars_provider.dart';
import 'people_detail_page.dart';



// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => StarWarsProvider(),
//       child: MaterialApp(
//         title: 'Star Wars People',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//           scaffoldBackgroundColor: Colors.grey[200], // Set background color
//         ),
//         home: PeoplePage(),
//       ),
//     );
//   }
// }
class PeoplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<StarWarsProvider>(context);

    return Center(
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (provider.isLoading)
            CircularProgressIndicator(),
          if (!provider.isLoading && provider.people.isNotEmpty)
            Column(
              children: [
                Text('Data loaded successfully', style: TextStyle(fontSize: 20)),
                Expanded(
                  child: ListView.builder(
                    itemCount: provider.people.length,
                    itemBuilder: (context, index) {
                      final person = provider.people[index];
                      return ListTile(
                        title: Text(person.name),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PeopleDetailPage(person: person)),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ElevatedButton(
            onPressed: () {
              provider.fetchPeople();
            },
            child: Text('Fetch People'),
          ),
        ],
      ),
    );
  }
}
