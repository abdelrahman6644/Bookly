import 'package:bookly_app/Features/search/presentation/views/Widgets/customseach_text_field.dart';
import 'package:bookly_app/Features/search/presentation/views/Widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomseachTextField(),
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}
