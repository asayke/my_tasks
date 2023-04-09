enum SortTypes {
  azSort(0),
  zaSort(1),
  dateSort(2);

  final int sortIndex;

  const SortTypes(this.sortIndex);
}