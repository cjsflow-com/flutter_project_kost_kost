import 'package:rimbun_cicio_kost/app/data/model/reservation/cancel_status_response.dart';
import 'package:rimbun_cicio_kost/app/data/model/reservation/index_reservation.dart';
import 'package:rimbun_cicio_kost/app/data/model/reservation/reservation.dart';
import 'package:rimbun_cicio_kost/app/data/model/reservation/status_history.dart';
import 'package:rimbun_cicio_kost/app/module/repository/reservation_repository.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

class ReservationUseCase {
  final ReservationRepository _reservationRepository;

  ReservationUseCase(this._reservationRepository);

  Future<DataState<ReservationResponse>> createReservation(
    int roomId,
    String startDate,
    int durationMonth,
    int deposit,
    int adminFee,
    String token,
  ) => _reservationRepository.createReservation(
    roomId,
    startDate,
    durationMonth,
    deposit,
    adminFee,
    token,
  );

  Future<DataState<IndexReservationResponse>> indexReservation(String token) => _reservationRepository.indexReservation(token);

  Future<DataState<StatusHistoryResponse>> getStatusHistory(int reservationId, String token) => _reservationRepository.getStatusHistory(reservationId, token);

  Future<DataState<CancelStatusResponse>> cancelReservation(int reservationId) => _reservationRepository.cancelReservation(reservationId);
}
