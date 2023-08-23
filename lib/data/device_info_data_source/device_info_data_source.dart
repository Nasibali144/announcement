import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';

abstract class DeviceInfoDataSource {
  Future<String> get deviceId;
}

class DeviceInfoDataSourceImpl implements DeviceInfoDataSource {
  final DeviceInfoPlugin deviceInfoPlugin;
  const DeviceInfoDataSourceImpl({required this.deviceInfoPlugin});

  @override
  Future<String> get deviceId async {
    String getDeviceId;
    if (Platform.isIOS) {
      final info = await deviceInfoPlugin.iosInfo;
      getDeviceId = info.identifierForVendor!;
    } else if (Platform.isAndroid) {
      final info = await deviceInfoPlugin.androidInfo;
      getDeviceId = info.id;
    } else {
      final info = await deviceInfoPlugin.webBrowserInfo;
      getDeviceId = info.vendor!;
    }

    return getDeviceId;
  }
}
