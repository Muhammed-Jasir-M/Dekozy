import 'package:aurakart/data/repositories/authentication/authentication_repository.dart';
import 'package:aurakart/features/personalization/models/address_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressRepository extends GetxController {
  static AddressRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  Future<List<AddressModel>> fecthUserAddresses() async {
    try {
      final userId = AuthenticationRepository.instance.authUser!.uid;

      if (userId.isEmpty) {
        throw 'Unable to Find user information. Try again in few minutes.';
      }

      final result =
          await _db.collection('Users').doc(userId).collection('Addresses').get();
          
      return result.docs
          .map((documentSnapshot) =>
              AddressModel.fromDocumentSnapshot(documentSnapshot))
          .toList();
    } catch (e) {
      throw 'Something went wrong while fetching Address Information.Try again later';
    }
  }

  /// Clear the "Selected" field for all addresses
  Future<void> updateSelectedField(String addressId, bool selected) async {
    try {
      final userId = AuthenticationRepository.instance.authUser!.uid;
      await _db
          .collection('Users')
          .doc(userId)
          .collection('Addresses')
          .doc(addressId)
          .update({'SelectedAddress': selected});
    } catch (e) {
      throw 'Unable to update your address selection.Try again later';
    }
  }

  /// Store new User order
  Future<String> addAddress(AddressModel address) async {
    try {
      final userId = AuthenticationRepository.instance.authUser!.uid;

      final currentAddress = await _db
          .collection('Users')
          .doc(userId)
          .collection('Addresses')
          .add(address.toJson());

      return currentAddress.id;
    } catch (e) {
      throw 'Something went wrong while saving address Information. Try again Later';
    }
  }
}
