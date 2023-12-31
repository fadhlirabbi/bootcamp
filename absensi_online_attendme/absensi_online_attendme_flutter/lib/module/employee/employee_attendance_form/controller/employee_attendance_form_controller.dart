import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hyper_ui/core.dart';

class EmployeeAttendanceFormController
    extends State<EmployeeAttendanceFormView> {
  static late EmployeeAttendanceFormController instance;
  late EmployeeAttendanceFormView view;

  @override
  void initState() {
    instance = this;
    initData();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String deviceModel = "";
  Position? position;

  initData() async {
    await Future.wait([
      getCheckInTodayStatus(),
      getCheckOutTodayStatus(),
    ]);

    deviceModel = await DeviceService.getDeviceModel();
    final response = await LocationService.getCurrentLocation();
    position = response.position;

    if (response.errorMessage != null) {
      showInfoDialog(response.errorMessage!);
    }
    setState(() {});
  }

  String? photo;
  checkIn() async {
    if (isCheckInToday) return;
    if (photo == null) {
      showInfoDialog("Kamu harus photo dulu!");
      return;
    }

    showLoading();
    var (isRecognized, errorMessage) =
        await AttendanceService().checkin(photo: photo!);
    hideLoading();

    if (!isRecognized) {
      return showInfoDialog(errorMessage);
    }

    await getCheckInTodayStatus();

    showInfoDialog("Berhasil checkin!");
  }

  bool isCheckInToday = false;
  Future getCheckInTodayStatus() async {
    isCheckInToday = await AttendanceService().isCheckInToday();
    setState(() {});
  }

  bool isCheckOutToday = false;
  Future getCheckOutTodayStatus() async {
    isCheckOutToday = await AttendanceService().isCheckOutToday();
    setState(() {});
  }

  checkOut() async {
    if (!(isCheckInToday && isCheckOutToday == false)) return;
    if (photo == null) {
      showInfoDialog("Kamu harus photo dulu!");
      return;
    }

    showLoading();
    var (isRecognized, errorMessage) =
        await AttendanceService().checkOut(photo: photo!);
    hideLoading();

    if (!isRecognized) {
      return showInfoDialog(errorMessage);
    }

    await Future.wait([
      getCheckInTodayStatus(),
      getCheckOutTodayStatus(),
    ]);
    setState(() {});

    showInfoDialog("Berhasil checkout!");
  }

  resetToday() async {
    showLoading();
    await AttendanceService().resetToday();
    await Future.wait([
      getCheckInTodayStatus(),
      getCheckOutTodayStatus(),
    ]);
    hideLoading();
    setState(() {});
  }
}
