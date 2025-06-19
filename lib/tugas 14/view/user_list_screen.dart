import 'package:belajar_flutter/tugas 14/api/get_user.dart';
import 'package:belajar_flutter/tugas 14/model/cat_model.dart';
import 'package:belajar_flutter/tugas 14/view/screen_detail.dart';
import 'package:flutter/material.dart';

class CatScreen extends StatelessWidget {
  const CatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CatListScreen(),
    );
  }
}

class CatListScreen extends StatefulWidget {
  const CatListScreen({super.key});

  @override
  _CatListScreenState createState() => _CatListScreenState();
}

class _CatListScreenState extends State<CatListScreen> {
  List<CatUsersModel> cats = [];
  List<CatUsersModel> filteredCats = [];
  bool isLoading = true;
  String searchQuery = '';
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _fetchCats();
    _searchController.addListener(() {
      _filterCats(_searchController.text);
    });
  }

  Future<void> _fetchCats() async {
    try {
      cats = await getUsers();
      setState(() {
        filteredCats = cats;
        isLoading = false;
      });
    } catch (e) {
      print('Error fetching cats: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  void _filterCats(String query) {
    setState(() {
      searchQuery = query;
      if (query.isEmpty) {
        filteredCats = cats;
      } else {
        filteredCats =
            cats
                .where(
                  (cat) => cat.id.toLowerCase().contains(query.toLowerCase()),
                )
                .toList();
      }
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cat Gallery'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 141, 109, 97),
        foregroundColor: Colors.white,
      ),
      backgroundColor: const Color.fromARGB(255, 211, 188, 179),
      body:
          isLoading
              ? const Center(child: CircularProgressIndicator())
              : Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        labelText: 'Search by ID',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        prefixIcon: const Icon(Icons.search),
                      ),
                    ),
                  ),
                  Expanded(
                    child:
                        filteredCats.isEmpty
                            ? const Center(child: Text('No cats found.'))
                            : ListView.builder(
                              itemCount: filteredCats.length,
                              itemBuilder: (context, index) {
                                final cat = filteredCats[index];
                                return Card(
                                  margin: const EdgeInsets.symmetric(
                                    vertical: 8,
                                    horizontal: 16,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  elevation: 4,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder:
                                              (context) =>
                                                  CatDetailScreen(cat: cat),
                                        ),
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.network(
                                            cat.url,
                                            fit: BoxFit.cover,
                                            height: 200,
                                            errorBuilder: (
                                              context,
                                              error,
                                              stackTrace,
                                            ) {
                                              return const Icon(Icons.error);
                                            },
                                          ),
                                          const SizedBox(height: 8),
                                          Text(
                                            'ID: ${cat.id}',
                                            style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text('Height: ${cat.height}'),
                                          Text('Width: ${cat.width}'),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                  ),
                ],
              ),
    );
  }
}
