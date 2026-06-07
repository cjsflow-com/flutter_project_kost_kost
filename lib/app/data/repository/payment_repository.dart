import 'dart:convert';

import 'package:rimbun_cicio_kost/app/data/model/payment/payment.dart';
import 'package:rimbun_cicio_kost/app/data/model/payment/payment_method.dart';
import 'package:rimbun_cicio_kost/app/data/services/api_service.dart';
import 'package:rimbun_cicio_kost/app/module/repository/payment_repository.dart';
import 'package:rimbun_cicio_kost/core/constant/constant.dart';
import 'package:rimbun_cicio_kost/core/helper/shared_prefrences_helper.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

class PaymentRepositoryImplements extends PaymentRepository{

  final ApiService _apiService;

  PaymentRepositoryImplements(this._apiService);

  @override
  Future<DataState<PaymentMethodResponse>> getPaymentMethod() async {
    try{
      final response = await _apiService.getPaymentMethod();
      final jsonBody = jsonDecode(response.body);
      final success = jsonBody['success'];
      final message = jsonBody['message'];

      if (response.statusCode == 200 && success == true){
        final payment = PaymentMethodResponse.fromJson(jsonBody);

        return DataState.success(payment);
      }else{
        return DataState.failed(message);
      }
    }catch(e){
      return DataState.failed('Terjadi kesalahan: ${e.toString()}');
    }
  }

  @override
  Future<DataState<CreatePaymentResponse>> createPayment(int reservationId, int paymentMethodId, int amount) async {
    try{
      final token = await SharedPreferencesHelper.getString(PREF_AUTH);
      final response = await _apiService.createPayment(reservationId, paymentMethodId, amount, token);
      final jsonBody = jsonDecode(response.body);
      final success = jsonBody['success'];
      final message = jsonBody['message'];

      if(response.statusCode == 200 && success == true){
        final createPayment = CreatePaymentResponse.fromJson(jsonBody);
        return DataState.success(createPayment);
      }else{
        print(message);
        return DataState.failed(message);
      }
    }catch(e){
      print(e.toString());
      return DataState.failed("Terjadi Kesalahan: ${e.toString()}");
    }
  }

}