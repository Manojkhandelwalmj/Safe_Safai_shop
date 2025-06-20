import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../features/personalization/models/user_model.dart';
import '../../../utils/exceptions/firebase_exceptions.dart';
import '../../../utils/exceptions/format_exceptions.dart';
import '../../../utils/exceptions/platform_exceptions.dart';

/// Repository class for user-related operations.
class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  /// Function to save user data to Firestore.
  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection("Users").doc(user.id).set(user.toJson());
    } on SafeSafaiFirebaseException catch (e) {
      throw SafeSafaiFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const SafeSafaiFormatException();
    } on PlatformException catch (e) {
      throw SafeSafaiPlatformException(e.code).message;
    } catch (_) {
      throw 'Something went wrong. Please try again';
    }
  }

/// Function to fetch user details based on user ID.

/// Function to update user data in Firestore.

/// Update any field in specific Users Collection
}
