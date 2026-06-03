import 'package:flutter/material.dart';
import 'package:rimbun_cicio_kost/core/constant/route_names.dart';
import 'package:rimbun_cicio_kost/core/helper/dialog_helper.dart';

class PaymentMethodPageInteractive extends StatefulWidget {
  const PaymentMethodPageInteractive({super.key});

  @override
  State<PaymentMethodPageInteractive> createState() =>
      _PaymentMethodPageInteractiveState();
}

class _PaymentMethodPageInteractiveState
    extends State<PaymentMethodPageInteractive> {
  static const Color primaryGreen = Color(0xFF0F5B2B);
  static const Color backgroundColor = Color(0xFFF4FAF4);

  // Pilihan metode pembayaran
  String selectedMethod = 'bank_BCA';
  double totalPayment = 7800000;

  // Simulasi biaya tambahan per metode (misal ada fee)
  final Map<String, double> methodFee = {
    'bank_BCA': 0,
    'bank_BRI': 0,
    'bank_Mandiri': 0,
    'ovo': 0,
    'gopay': 0,
    'dana': 0,
    'shopeepay': 0,
    'cash': 0,
  };

  void selectMethod(String method) {
    setState(() {
      selectedMethod = method;
      // update total payment
      totalPayment = 7800000 + (methodFee[method] ?? 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final isTablet = size.width >= 600;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: isTablet ? 48 : 16, vertical: 12),
              child: Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    borderRadius: BorderRadius.circular(999),
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.arrow_back, color: Colors.black87),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    'Pilih Metode Pembayaran',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                    horizontal: isTablet ? 48 : 16, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Total Pembayaran
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
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 6,),
                          Text(
                            'Rp ${totalPayment.toStringAsFixed(0)}',
                            style: const TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 22, color: primaryGreen),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Transfer Bank
                    const Text('Transfer Bank',
                        style: TextStyle(fontWeight: FontWeight.w700)),
                    const SizedBox(height: 8),
                    GridView.count(
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 2.5,
                      physics: const NeverScrollableScrollPhysics(),
                      children: ['BCA', 'BRI', 'Mandiri'].map((bank) {
                        final method = 'bank_$bank';
                        final isSelected = selectedMethod == method;
                        return GestureDetector(
                          onTap: () => selectMethod(method),
                          child: Container(
                            decoration: BoxDecoration(
                              color: isSelected ? primaryGreen : Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: isSelected
                                      ? primaryGreen
                                      : Colors.grey.shade400),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              bank,
                              style: TextStyle(
                                color: isSelected ? Colors.white : Colors.black87,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),

                    const SizedBox(height: 16),

                    // E-Wallet
                    const Text('E-Wallet', style: TextStyle(fontWeight: FontWeight.w700)),
                    const SizedBox(height: 8),
                    GridView.count(
                      crossAxisCount: 4,
                      shrinkWrap: true,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 2.2,
                      physics: const NeverScrollableScrollPhysics(),
                      children: ['OVO', 'Gopay', 'Dana', 'ShopeePay'].map((wallet) {
                        final method = wallet.toLowerCase();
                        final isSelected = selectedMethod == method;
                        return GestureDetector(
                          onTap: () => selectMethod(method),
                          child: Container(
                            decoration: BoxDecoration(
                              color: isSelected ? primaryGreen : Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: isSelected
                                      ? primaryGreen
                                      : Colors.grey.shade400),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              wallet,
                              style: TextStyle(
                                color: isSelected ? Colors.white : Colors.black87,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),

                    const SizedBox(height: 16),

                    // Bayar di Tempat
                    Row(
                      children: [
                        Radio<bool>(
                          value: true,
                          groupValue: selectedMethod == 'cash',
                          onChanged: (_) => selectMethod('cash'),
                        ),
                        const Text('Bayar di Tempat / Cash'),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Tombol Lanjut Pembayaran
            Padding(
              padding: EdgeInsets.symmetric(horizontal: isTablet ? 48 : 16, vertical: 12),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    DialogHelper.pushNamed(context: context, nameRoutes: RouteNames.payment_detail);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryGreen,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Lanjut Pembayaran',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}