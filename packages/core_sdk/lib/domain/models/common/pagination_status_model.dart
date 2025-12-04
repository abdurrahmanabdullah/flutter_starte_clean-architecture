part of 'models.dart';

class PaginationStatusModel {
  int totalRecords;
  int currentPage;
  int pageSize;
  int totalPages;
  bool hasNextPage;
  dynamic grandTotal;
  bool? isSuccess;
  String? message;

  PaginationStatusModel({
    this.totalRecords = 0,
    this.currentPage = 0,
    this.pageSize = 20,
    this.totalPages = 1,
    this.hasNextPage = true,
    this.grandTotal,
    this.isSuccess,
    this.message,
  });

  PaginationModel nextPagination() {
    return PaginationModel(
      currentPage: currentPage + 1,
      totalPage: totalPages,
      totalData: totalRecords,
      pageSize: pageSize,
    );
  }

  PaginationStatusModel start() {
    return PaginationStatusModel(
      totalRecords: totalRecords,
      currentPage: 0,
      totalPages: totalPages,
      pageSize: pageSize,
    );
  }

  PaginationStatusModel next() {
    return PaginationStatusModel(
      totalRecords: totalRecords,
      currentPage: currentPage + 1,
      totalPages: totalPages,
      pageSize: pageSize,
    );
  }

  factory PaginationStatusModel.empty() =>
      PaginationStatusModel(currentPage: 0, totalPages: 1, totalRecords: 0);
}
