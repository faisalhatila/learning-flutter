main() {
  var listNos = [10,20,30,40,50];
  listNos.add(60);
  var names = [];
  // names.addAll(listNames);
  names.add("Faisal");
  names.add("Hanif");
  names.add("Hatila");
  names[1] = "Haneef";
  // print("$names");
  print("$listNos");
  listNos.replaceRange(0, 3,[1,2,3,4]);
  // names.insertAll(2, listNames);
  print("normal:$listNos");
  listNos.removeAt(1);
  print("first time remove:$listNos");
  listNos.removeAt(1);
  print("second time remove:$listNos");
  // listNos.removeRange(0, 5);
  // print("remove range:$listNos");
  print("length:${listNos.length}");
  print("reversed:${listNos.reversed}");
  print("first:${listNos.first}");
  print("last:${listNos.last}");
  print("isEmpty:${listNos.isEmpty}");
  print("isNotEmpty:${listNos.isNotEmpty}");
  print("at index:${listNos.elementAt(2)}");
}