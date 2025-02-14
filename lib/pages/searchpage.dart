import 'package:flutter/widgets.dart';
import 'package:shop_571/config/imports.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Search Page"),),);
  }
}