import 'package:flutter/material.dart';
import 'package:rimbun_cicio_kost/app/data/model/payment/payment.dart';
import 'package:rimbun_cicio_kost/app/data/model/payment/payment_method.dart';
import 'package:rimbun_cicio_kost/app/module/use_case/payment_use_case.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

class PaymentProvider extends ChangeNotifier{
  final PaymentUseCase  _paymentUseCase;

  PaymentProvider(this._paymentUseCase);

  DataState<PaymentMethodResponse> _state = const DataStateInitial();
  DataState<PaymentMethodResponse> get state => _state;

  DataState<CreatePaymentResponse> _statePayment = const DataStateInitial();
  DataState<CreatePaymentResponse> get statePayment => _statePayment;

  Future<void> getPaymentMethod() async {
    final result = await _paymentUseCase.getPaymentMethod();

    switch(result){
      case DataStateInitial():
        _state = DataState.loading();
        break;
      case DataStateSuccess(:final data):
        _state = DataState.success(data);
        break;
      case DataStateFailed(:final message):
        _state = DataState.failed(message);
        break;
      default:
        _state = const DataState.initial();
    }
    notifyListeners();
  }

  Future<void> createPayment(int reservationId, int paymentMethodId, int amount) async {
    _statePayment = const DataStateLoading();
    notifyListeners();

    final resultCreatePayment = await _paymentUseCase.createResponse(reservationId, paymentMethodId, amount);

    switch(resultCreatePayment){
      case DataStateSuccess(:final data):
        _statePayment = DataState.success(data);
        break;
      case DataStateFailed(:final message):
        _statePayment = DataState.failed(message);
        break;
        default:
          _statePayment = DataState.initial();
    }
    notifyListeners();
  }
}