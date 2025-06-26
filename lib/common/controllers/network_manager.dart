import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:myapp/utils/popups/snackbar.dart';

class NetworkManager extends GetxController {
  static NetworkManager get instance => Get.find();

  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  final RxList<ConnectivityResult> _connectivityStatus = [
    ConnectivityResult.none,
  ].obs;
  @override
  void onInit() {
    _connectivity.onConnectivityChanged.listen(_updateConnectivityStatus);
    super.onInit();
  }

  void _updateConnectivityStatus(List<ConnectivityResult> result) async {
    _connectivityStatus.value = result;
    if (_connectivityStatus.isEmpty ||
        _connectivityStatus.contains(ConnectivityResult.none)) {
      AppAlerts.errorSnakbar(title: "Network Not Found");
    }
  }

  bool isConnected() {
    try {
      if (_connectivityStatus.isEmpty ||
          _connectivityStatus.contains(ConnectivityResult.none)) {
        return false;
      } else {
        return true;
      }
    } on PlatformException catch (_) {
      return false;
    } catch (e) {
      return false;
    }
  }

  @override
  void onClose() {
    _connectivitySubscription.cancel();
    super.onClose();
  }
}
