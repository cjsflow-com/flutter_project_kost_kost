import 'package:rimbun_cicio_kost/app/data/model/reservation/cancel_status_response.dart';
import 'package:rimbun_cicio_kost/app/data/model/reservation/detail_reservation.dart';
import 'package:rimbun_cicio_kost/app/data/model/reservation/index_reservation.dart';
import 'package:rimbun_cicio_kost/app/data/model/reservation/reservation.dart';
import 'package:rimbun_cicio_kost/app/data/model/reservation/status_history.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

abstract class ReservationRepository {
  Future<DataState<ReservationResponse>> createReservation(int roomId, String startDate, int durationMonth, int deposit, int adminFee, String token);
  Future<DataState<IndexReservationResponse>> indexReservation(String token);
  Future<DataState<StatusHistoryResponse>> getStatusHistory(int reservationId, String token);
  Future<DataState<CancelStatusResponse>> cancelReservation(int reservationId);
  Future<DataState<ReservationDetailResponse>> showReservation(int reservationId, String token);
}