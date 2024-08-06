import 'package:event_app/models/categories_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchPage extends StatefulWidget {
  SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<CategoriesModel> categories = [];

  @override
  void initState() {
    super.initState();
    _getCategories();
  }

  void _getCategories() {
    setState(() {
      categories = CategoriesModel.getEvents();
    });
  }

  @override
  Widget build(BuildContext context) {
    // _getCategory();
    return Scaffold(
      appBar: _searchBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          _categories()
        ],
      ),
    );
  }

  Container _categories() {
    return Container(
      height: 28,
      // color: Colors.green,
      margin: EdgeInsets.only(top: 16),
      child: ListView.separated(
        itemCount: categories.length,
        padding: EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(width: 12),
        itemBuilder: (context, index) {
          return Container(
            width: 112,
            decoration: BoxDecoration(
              color: categories[index].boxColor,
              borderRadius: BorderRadius.circular(8)
            ),
            child: Center(
              child: Text(
                categories[index].categoryName,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400
                ),
              ),
            ),
          );
        },
      )
    );
  }

  AppBar _searchBar() {
    return AppBar(
      title: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(12),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset('assets/icons/Search_light.svg'),
              ),
              hintText: 'Search event...',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Color(0xffF5F5F5),
            )
          ),
        ),
      ),
      backgroundColor: Colors.white,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Color(0xffff8a22),

        // Status bar brightness (optional)
        statusBarIconBrightness: Brightness.light, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (light icons)
      ),
    );
  }
}