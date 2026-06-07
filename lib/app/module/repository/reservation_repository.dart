import 'package:rimbun_cicio_kost/app/data/model/reservation/reservation.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

abstract class ReservationRepository {
  Future<DataState<ReservationResponse>> createReservation(int roomId, String startDate, int durationMonth, int deposit, int adminFee, String token);
}