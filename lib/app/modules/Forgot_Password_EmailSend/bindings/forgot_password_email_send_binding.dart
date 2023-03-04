import 'package:get/get.dart';

import '../controllers/forgot_password_email_send_controller.dart';

class ForgotPasswordEmailSendBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotPasswordEmailSendController>(
      () => ForgotPasswordEmailSendController(),
    );
  }
}
