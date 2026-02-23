import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lingolakidstories/Services/dio_service.dart';
import 'package:lingolakidstories/Services/secure_storage_service.dart';

class AllProviders {
  static final dioServiceProvider = Provider<DioService>((ref) {
    return DioService(ref);
  });

  static final secureStorageServiceProvider = Provider<SecureStorageService>((
    ref,
  ) {
    return SecureStorageService();
  });
}
