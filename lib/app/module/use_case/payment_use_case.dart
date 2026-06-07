import 'package:provider/provider.dart';
import 'package:rimbun_cicio_kost/app/data/model/payment/payment.dart';
import 'package:rimbun_cicio_kost/app/data/model/payment/payment_method.dart';
import 'package:rimbun_cicio_kost/app/module/repository/payment_repository.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

class PaymentUseCase{
  final PaymentRepository _paymentRepository;

  PaymentUseCase(this._paymentRepository);

  Future<DataState<PaymentMethodResponse>> getPaymentMethod() => _paymentRepository.getPaymentMethod();

  Future<DataState<CreatePaymentResponse>> createResponse(int reservationId, int paymentMethodId, int amount) => _paymentRepository.createPayment(reservationId, paymentMethodId, amount);
}