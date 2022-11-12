import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constants/my_images.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        autofocus: false,
        decoration: InputDecoration(
            hintText: "Search",

            contentPadding: EdgeInsets.symmetric(vertical: 16),
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SvgPicture.asset(
                searchIcon,
                color: Colors.black,
              ),
            ),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(32),
                ),
                borderSide: BorderSide(color: Colors.grey, width: 1.0))),
      ),
    );
  }
}
