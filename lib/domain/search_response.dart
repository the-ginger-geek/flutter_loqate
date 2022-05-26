import 'search_item.dart';

class SearchResponse {
  List<AddressItem> searchItems;

  SearchResponse(this.searchItems);

  factory SearchResponse.fromJson(List<dynamic> json) {
    List<AddressItem> searchItems = [];
    for (var item in json) {
      searchItems.add(AddressItem.fromJson(item));
    }

    return SearchResponse(searchItems);
  }
}
