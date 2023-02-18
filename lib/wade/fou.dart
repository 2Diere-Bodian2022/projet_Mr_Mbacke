import 'package:flutter/material.dart';
import 'essai.dart';

class EspaceTagsPage extends StatefulWidget {
  @override
  _EspaceTagsPageState createState() => _EspaceTagsPageState();
}

class _EspaceTagsPageState extends State<EspaceTagsPage> {
  final TextEditingController _searchController = TextEditingController();
  bool _isLoading = false;
  String _error = '';
  List<String> _results = [];

  void _performSearch() async {
    setState(() {
      _isLoading = true;
      _error = '';
      _results.clear();
    });

    // Simulate an asynchronous search operation
    await Future.delayed(const Duration(seconds: 2));

    // Get the search query from the text field
    final String searchQuery = _searchController.text;

    if (searchQuery.isEmpty) {
      setState(() {
        _isLoading = false;
        _error = 'Veuillez entrer une requête de recherche.';
      });
    } else {
      // Simulate some search results
      if (searchQuery == 'flutter') {
        _results = ['Flutter is awesome!', 'Flutter is fast!', 'Flutter is fun!'];
      }

      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Espace tags/catégories de produits/services'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('RECHERCHER', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Rechercher',
                errorText: _error.isNotEmpty ? _error : null,
              ),
              onSubmitted: (value) => _performSearch(),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _performSearch,
              child: _isLoading ? const CircularProgressIndicator() : Text('Rechercher'),
            ),
            const SizedBox(height: 16),
            _isLoading
                ? const Center(child: CircularProgressIndicator())
                : _results.isEmpty
                ? Center(child: Text('Aucun résultat pour "${_searchController.text}"'))
                : Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _results.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(_results[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondPages()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
