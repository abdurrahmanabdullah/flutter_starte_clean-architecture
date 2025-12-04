part of 'models.dart';

class PaginationModel {
  int totalData;
  int totalPage;
  int currentPage;
  int pageSize;

  PaginationModel({
    this.totalData = 0,
    this.totalPage = 1,
    this.currentPage = 1,
    this.pageSize = 20,
  });

  factory PaginationModel.empty() =>
      PaginationModel(totalData: 0, totalPage: 1, currentPage: 1, pageSize: 20);
}
