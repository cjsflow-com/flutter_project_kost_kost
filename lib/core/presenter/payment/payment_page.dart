import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rimbun_cicio_kost/app/data/model/payment/payment_method.dart';
import 'package:rimbun_cicio_kost/core/constant/route_names.dart';
import 'package:rimbun_cicio_kost/core/helper/dialog_helper.dart';
import 'package:rimbun_cicio_kost/core/presenter/component/widgets/rgb_progress_indicator.dart';
import 'package:rimbun_cicio_kost/core/presenter/payment/payment_provider.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

class PaymentMethodPageInteractive extends StatefulWidget {

  final Map<String, dynamic> valuePayment;

  const PaymentMethodPageInteractive({super.key, required this.valuePayment});


  @override
  State<PaymentMethodPageInteractive> createState() =>
      _PaymentMethodPageInteractiveState();
}

class _PaymentMethodPageInteractiveState
    extends State<PaymentMethodPageInteractive> {

  late Map<String, dynamic> valuePayment;

  static const Color primaryGreen = Color(0xFF0F5B2B);
  static const Color backgroundColor = Color(0xFFF4FAF4);

  int? selectedMethodCode;
  double totalPayment = 7800000;

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      context.read<PaymentProvider>().getPaymentMethod();
    });
  }

  void selectMethod(int? code) {
    setState(() {
      selectedMethodCode = code;
    });
  }

  Widget buildPaymentGrid({
    required List<PaymentMethod> items,
    required int crossAxisCount,
    required String emptyText,
  }) {
    if (items.isEmpty) {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Text(
          emptyText,
          style: TextStyle(
            color: Colors.grey.shade600,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
    }

    return GridView.count(
      crossAxisCount: crossAxisCount,
      shrinkWrap: true,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 2.5,
      physics: const NeverScrollableScrollPhysics(),
      children: items.map((item) {
        final isSelected = selectedMethodCode == item.id;

        return GestureDetector(
          onTap: () => selectMethod(item.id),
          child: Container(
            decoration: BoxDecoration(
              color: isSelected ? primaryGreen : Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: isSelected ? primaryGreen : Colors.grey.shade400,
              ),
            ),
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              item.name,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black87,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final isTablet = size.width >= 600;

    final int totalPrice = valuePayment['totalPrice'];
    final idReservation = valuePayment['id'];

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () => context.read<PaymentProvider>().getPaymentMethod(),
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: isTablet ? 48 : 16,
                  vertical: 12,
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () => DialogHelper.goNamed(
                        context: context,
                        nameRoutes: RouteNames.home_page,
                      ),
                      borderRadius: BorderRadius.circular(999),
                      child: Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Text(
                        'Pilih Metode Pembayaran',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Consumer<PaymentProvider>(
                  builder: (context, provider, _) {
                    final state = provider.state;

                    switch (state) {
                      case DataStateLoading():
                        return const Center(
                          child: CircularProgressIndicator(
                            color: primaryGreen,
                          ),
                        );

                      case DataStateFailed(:final message):
                        return Center(
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              message,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        );

                      case DataStateSuccess(:final data):
                        final paymentMethods = data.data;

                        final bankTransferMethods = paymentMethods
                            .where((item) => item.type == 'bank_transfer')
                            .toList();

                        final eWalletMethods = paymentMethods
                            .where((item) => item.type == 'e_wallet')
                            .toList();

                        final cashMethods = paymentMethods
                            .where((item) => item.type == 'cash')
                            .toList();

                        return SingleChildScrollView(
                          padding: EdgeInsets.symmetric(
                            horizontal: isTablet ? 48 : 16,
                            vertical: 12,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Total Pembayaran',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Text(
                                      'Rp ${totalPrice.toStringAsFixed(0)}',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 22,
                                        color: primaryGreen,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              const SizedBox(height: 16),

                              const Text(
                                'Transfer Bank',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(height: 8),
                              buildPaymentGrid(
                                items: bankTransferMethods,
                                crossAxisCount: 3,
                                emptyText: 'Metode Transfer Bank belum tersedia',
                              ),

                              const SizedBox(height: 16),

                              const Text(
                                'E-Wallet',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(height: 8),
                              buildPaymentGrid(
                                items: eWalletMethods,
                                crossAxisCount: 4,
                                emptyText: 'Metode E-Wallet belum tersedia',
                              ),

                              const SizedBox(height: 16),

                              if (cashMethods.isNotEmpty) ...[
                                const Text(
                                  'Bayar di Tempat',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(height: 8),
                                Column(
                                  children: cashMethods.map((item) {
                                    return RadioListTile<int>(
                                      value: item.id,
                                      groupValue: selectedMethodCode,
                                      onChanged: (value) {
                                        if (value != null) {
                                          selectMethod(value);
                                        }
                                      },
                                      title: Text(item.name),
                                      activeColor: primaryGreen,
                                      contentPadding: EdgeInsets.zero,
                                    );
                                  }).toList(),
                                ),
                              ],
                            ],
                          ),
                        );

                      default:
                        return const SizedBox();
                    }
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: isTablet ? 48 : 16,
                  vertical: 12,
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Consumer<PaymentProvider>(builder: (context,provider,_){
                    final state = provider.statePayment;
                    return switch(state){
                       DataStateLoading() => const Center(
                         child: RGBProgressIndicator(),
                       ),
                    _ => _onSuccess(provider, totalPrice, idReservation, selectedMethodCode!)
                    };
                  })
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget _onSuccess(PaymentProvider provider, int totalPrice, int idReservation, int idPaymentMethod){
    return ElevatedButton(
      onPressed: selectedMethodCode == null
          ? null
          : () async {
        await provider.createPayment(idReservation, idPaymentMethod, totalPrice);

        switch(provider.statePayment){
          case DataStateSuccess(:final data):
            DialogHelper.goNamed(context: context, nameRoutes: RouteNames.payment_detail);
            DialogHelper.showSnackBar(context: context, text: data.message);
            break;
          case DataStateFailed(:final message):
            DialogHelper.showSnackBar(context: context, text: message);
          default:
            break;
        }
      },

      style: ElevatedButton.styleFrom(
        backgroundColor: primaryGreen,
        disabledBackgroundColor: Colors.grey.shade400,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: const Text(
        'Bayar',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}