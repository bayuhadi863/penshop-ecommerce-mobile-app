import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:penstore/models/user_model.dart';
import 'package:penstore/repository/user_repository.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  final Rx<UserModel> user = UserModel.empty().obs;

  final currentUser = FirebaseAuth.instance.currentUser;

  @override
  void onInit() {
    super.onInit();
    if (currentUser != null) {
      getCurrentUser(currentUser!.uid);
    }
  }

  void getCurrentUser(String uid) async {
    try {
      final UserRepository userRepository = Get.put(UserRepository());
      final UserModel userModel = await userRepository.fetchUser(uid);
      user.value = userModel;
      
    } catch (e) {
      print(e.toString());
    }
  }
}
