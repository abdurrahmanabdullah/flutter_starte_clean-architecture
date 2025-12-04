part of 'models.dart';

class PaginationListModel<DataType> {
  PaginationStatusModel status;
  List<DataType> data;

  PaginationListModel({required this.status, required this.data});

  factory PaginationListModel.empty() =>
      PaginationListModel(status: PaginationStatusModel.empty(), data: []);
}
