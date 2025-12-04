import 'package:flutter/material.dart';

class BasicAppBarController extends ChangeNotifier {
  bool _isSearching = false;
  final TextEditingController searchController = TextEditingController();
  final FocusNode searchFocusNode = FocusNode();

  bool get isSearching => _isSearching;

  BasicAppBarController() {
    searchFocusNode.addListener(() {
      if (!searchFocusNode.hasFocus && _isSearching) {
        stopSearch();
      }
    });
  }

  void toggleSearch() {
    _isSearching = !_isSearching;
    if (_isSearching) {
      Future.delayed(const Duration(milliseconds: 100), () {
        searchFocusNode.requestFocus();
      });
    } else {
      stopSearch();
    }
    notifyListeners();
  }

  void stopSearch() {
    _isSearching = false;
    searchController.clear();
    searchFocusNode.unfocus();
    notifyListeners();
  }

  @override
  void dispose() {
    searchController.dispose();
    searchFocusNode.dispose();
    super.dispose();
  }
}
