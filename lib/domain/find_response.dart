import 'find_item.dart';

class FindResponse {
  List<FindItem> searchItems;

  FindResponse(this.searchItems);

  factory FindResponse.fromJson(List<dynamic> json) {
    List<FindItem> searchItems = [];
    for (var item in json) {
      searchItems.add(FindItem.fromJson(item));
    }

    return FindResponse(searchItems);
  }
}
