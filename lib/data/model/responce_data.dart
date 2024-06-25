class ResponceData {
  final bool isSuccess;
  final int StatusCode;
  final String isError;
  final dynamic responceData;

  ResponceData(
      {required this.isSuccess,
      required this.StatusCode,
        this.isError='something Wrong',
      required this.responceData});
}
