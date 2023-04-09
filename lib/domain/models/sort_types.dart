/// enum для видов сортировок
enum SortTypes {
  azSort(0),
  zaSort(1),
  dateSort(2);

  const SortTypes(this.sortIndex);

  final int sortIndex;
}
