import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ourcochin/core/constants/colors.dart';
import 'package:ourcochin/core/constants/text_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);

    // Mock backend data (replace this with your actual API response)
    final List<Map<String, String>> backendData = [
      // Example data: You can replace with your real data from the API
      {
        'imageUrl': 'assets/download.jpg',
        'title': 'Item 1',
        'subtitle': 'Subtitle for item 1',
        'subtitle2': 'Towards Aluva',
      },
      {
        'imageUrl': 'assets/download.jpg',
        'title': 'Item 1',
        'subtitle': 'Subtitle for item 1',
        'subtitle2': 'Towards Aluva',
      },
      {
        'imageUrl': 'assets/download.jpg',
        'title': 'Item 1',
        'subtitle': 'Subtitle for item 1',
        'subtitle2': 'Towards Aluva',
      },
      {
        'imageUrl': 'assets/download.jpg',
        'title': 'Item 1',
        'subtitle2': 'Towards Aluva',
        'subtitle': 'Subtitle for item 1',
      },
      {
        'imageUrl': 'assets/download.jpg',
        'title': 'Item 2',
        'subtitle': 'Subtitle for item 2',
        'subtitle2': 'Towards Aluva',
      },
    ];

    return Scaffold(
      backgroundColor: ColorTheme.white,
      body: Column(
        children: [
          // Top container
          Container(
            height: size.height * .45,
            width: size.width,
            decoration: BoxDecoration(
              color: ColorTheme.mainColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: size.height * .001,
                  left: size.width * .001,
                  child: Image.asset(
                    'assets/ourcochinlogo.png',
                    height: size.height * .13,
                    width: size.width * .3,
                  ),
                ),
                Positioned(
                  left: size.width * .1,
                  right: size.width * .1,
                  top: size.height * .12,
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: ColorTheme.white,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: ColorTheme.black.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Search 1',
                            labelStyle: GoogleFonts.montserrat(
                              color: ColorTheme.black,
                            ),
                            filled: true,
                            fillColor: ColorTheme.white,
                            prefixIcon: const Icon(Icons.search),
                            border: InputBorder.none,
                          ),
                        ),
                        Divider(
                          color: ColorTheme.grey,
                          thickness: 1,
                          height: 1,
                        ),
                        SizedBox(height: size.height * .01),
                        DropdownButtonFormField<String>(
                          value: null,
                          decoration: InputDecoration(
                            labelText: 'Category',
                            labelStyle: GoogleFonts.montserrat(
                              color: ColorTheme.black,
                            ),
                            filled: true,
                            fillColor: ColorTheme.white,
                            border: InputBorder.none,
                          ),
                          items: [
                            'Category 1',
                            'Category 2',
                            'Category 3',
                            'Category 4',
                          ].map((String category) {
                            return DropdownMenuItem<String>(
                              value: category,
                              child: Text(
                                category,
                                style: GoogleFonts.montserrat(),
                                overflow: TextOverflow.ellipsis,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            // Handle category selection
                          },
                        ),
                        Divider(
                          color: ColorTheme.grey,
                          thickness: 1,
                          height: 1,
                        ),
                        SizedBox(height: size.height * .01),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Search 2',
                                  labelStyle: GoogleFonts.montserrat(
                                    color: ColorTheme.black,
                                  ),
                                  filled: true,
                                  fillColor: ColorTheme.white,
                                  prefixIcon: const Icon(Icons.search),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8.0),
                            Expanded(
                              child: Container(
                                height: size.height * .05,
                                decoration: BoxDecoration(
                                  color: ColorTheme.searchButtonColor,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    // Action for the button
                                  },
                                  child: Text(
                                    'Search',
                                    style: TextStyles.registarionTexts(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Remaining content
          Expanded(
              child: backendData.isNotEmpty
                  ? ListView.builder(
                      padding: EdgeInsets.all(size.width * .01),
                      itemCount: backendData.length,
                      itemBuilder: (context, index) {
                        final item = backendData[index];
                        return Card(
                          color: ColorTheme.cardcolor,
                          margin: const EdgeInsets.only(bottom: 12.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          elevation: 3,
                          child: Padding(
                            padding: EdgeInsets.all(size.width * .03),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    // Image and title
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        item['imageUrl'] != null &&
                                                item['imageUrl']!.isNotEmpty
                                            ? item['imageUrl']!
                                            : 'assets/download.jpg', // Fallback image
                                        width: size.width * .3,
                                        height: size.height * .1,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(width: 12.0),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            item['title'] ?? 'Title',
                                            style: GoogleFonts.montserrat(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: ColorTheme.black,
                                            ),
                                          ),
                                          SizedBox(height: size.height * .008),
                                          Text(
                                            item['subtitle'] ?? 'Subtitle',
                                            style: GoogleFonts.montserrat(
                                              fontSize: 14,
                                              color: ColorTheme.grey,
                                            ),
                                          ),
                                          Text(
                                            item['subtitle2'] ?? 'Subtitle2',
                                            style: GoogleFonts.montserrat(
                                              fontSize: 14,
                                              color: ColorTheme.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  : Center(
                      child: Text(
                        'There is no data available yet. Please perform a search.',
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: ColorTheme.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )),
        ],
      ),
    );
  }
}
