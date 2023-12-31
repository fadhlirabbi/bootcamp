import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:permission_handler/permission_handler.dart';

class LoginController extends State<LoginView> {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String email = "user@demo.com";
  String password = "123456";
  bool loading = false;

  doLogin() async {
    bool isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    }

    showLoading();

    var obj = await AuthService().login(
      email: email,
      password: password,
    );
    bool isSuccess = obj["success"] == true;

    if (isSuccess) {
      if (await Permission.notification.request().isGranted) {
        await NotificationService().initNotifications();
        await NotificationService().getToken();
      }
    }

    hideLoading();

    if (!isSuccess) {
      String message = obj["data"]["message"];
      showInfoDialog(message);
      return;
    }

    Get.offAll(EmployeeMainNavigationView());
  }
}
