import 'package:hyper_ui/model/doctor/doctor.dart';
import 'package:hyper_ui/service/api_service/api_service.dart';
import 'package:injectable/injectable.dart';

@singleton
class DoctorService extends ApiService {
  @override
  String get endpoint => "doctors";

  Future<List<Doctor>> getDoctors({
    String search = "",
  }) async {
    List items = await get(
      search: search,
    );
    List<Doctor> doctors = items.map((item) => Doctor.fromJson(item)).toList();
    return doctors;
  }
}
