import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:rimbun_cicio_kost/app/data/model/reservation/reservation.dart';
import 'package:rimbun_cicio_kost/core/constant/route_names.dart';
import 'package:rimbun_cicio_kost/core/helper/dialog_helper.dart';
import 'package:rimbun_cicio_kost/core/helper/number_helper.dart';
import 'package:rimbun_cicio_kost/core/presenter/component/widgets/rgb_progress_indicator.dart';
import 'package:rimbun_cicio_kost/core/presenter/reservation/reservation_provider.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

class ReservationFormPage extends StatefulWidget {
  final Map<String, dynamic> roomData;

  ReservationFormPage({super.key, required this.roomData});

  @override
  State<ReservationFormPage> createState() => _ReservationFormPageState();
}

class _ReservationFormPageState extends State<ReservationFormPage> {
  late Map<String, dynamic> roomData;
  static const Color primaryGreen = Color(0xFF0F5B2B);
  static const Color backgroundColor = Color(0xFFF4FAF4);

  final int adminFee = 100000;
  final int deposit = 500000;

  @override
  void initState() {
    super.initState();
    roomData = widget.roomData;
  }

  DateTime selectedDate = DateTime.now();
  int duration = 1;

  final List<int> durationOptions = [1, 2, 3, 4, 5, 6, 12];

  int get hargaSewa => roomData['price'] * duration;

  int get totalPembayaran => hargaSewa + adminFee + deposit;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final isTablet = size.width >= 600;
    final roomId = roomData['roomId'] ?? 0;
    final title = roomData['title'] ?? '';
    final pricePerMonth = roomData['price'] ?? 0;
    final status = roomData['status'] ?? '';
    final images = roomData['images'] as List<dynamic>? ?? [];
    final imageUrl =
        images.isNotEmpty
            ? "${roomData['thumbnail'] ?? ''}/${images[0]['image']}"
            : "https://via.placeholder.com/400";

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: isTablet ? 48 : 16,
                vertical: 12,
              ),
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
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    'Lanjut Reservasi',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                  horizontal: isTablet ? 48 : 16,
                  vertical: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Gambar kamar
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        imageUrl,
                        width: double.infinity,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 12),

                    // Nama kamar + harga + status
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '${NumberHelper.formatIdr(pricePerMonth)}/bulan',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: primaryGreen,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFE8F5E9),
                            borderRadius: BorderRadius.circular(999),
                          ),
                          child: Text(
                            status,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w800,
                              color: primaryGreen,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Pilih tanggal masuk
                    // Row Tanggal Masuk + Durasi Sewa
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Tanggal Masuk',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(height: 6),
                              InkWell(
                                onTap: () async {
                                  DateTime? picked = await showDatePicker(
                                    context: context,
                                    initialDate: selectedDate,
                                    firstDate: DateTime.now(),
                                    lastDate: DateTime.now().add(
                                      const Duration(days: 365),
                                    ),
                                  );
                                  if (picked != null) {
                                    setState(() => selectedDate = picked);
                                  }
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 14,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey.shade400,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    DateFormat(
                                      'dd MMM yyyy',
                                    ).format(selectedDate),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Durasi Sewa',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(height: 6),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey.shade400,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: DropdownButton<int>(
                                  isExpanded: true,
                                  value: duration,
                                  underline: const SizedBox(),
                                  items:
                                      durationOptions.map((e) {
                                        return DropdownMenuItem(
                                          value: e,
                                          child: Text('$e Bulan'),
                                        );
                                      }).toList(),
                                  onChanged: (val) {
                                    if (val != null)
                                      setState(() => duration = val);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // Rincian pembayaran
                    const Text(
                      'Rincian Pembayaran',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 6),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Column(
                        children: [
                          _buildPaymentRow(
                            'Harga Sewa',
                            NumberHelper.formatIdr(hargaSewa),
                          ),
                          const SizedBox(height: 6),
                          _buildPaymentRow(
                            'Biaya Admin',
                            NumberHelper.formatIdr(adminFee),
                          ),
                          const SizedBox(height: 6),
                          _buildPaymentRow(
                            'Deposit',
                            NumberHelper.formatIdr(deposit),
                          ),
                          const Divider(height: 20),
                          _buildPaymentRow(
                            'Total Pembayaran',
                            NumberHelper.formatIdr(totalPembayaran),
                            isTotal: true,
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 8),
                    const Text(
                      'Reservasi tidak dikenakan biaya di muka. Pembayaran dilakukan setelah reservasi disetujui.',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),

                    const SizedBox(height: 28),
                  ],
                ),
              ),
            ),

            // Tombol Ajukan Reservasi
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: isTablet ? 48 : 16,
                vertical: 12,
              ),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: Consumer<ReservationProvider>(
                  builder: (context, provider, child) {
                    return switch (provider.state) {
                      DataStateLoading() => const Center(
                        child: RGBProgressIndicator(),
                      ),

                      _ => ElevatedButton(
                        onPressed: () async {
                          await provider.createReservation(
                            roomId,
                            NumberHelper.convertDateTimeToBackendString(
                              selectedDate,
                            ),
                            duration,
                            deposit,
                            adminFee,
                          );

                          switch (provider.state) {
                            case DataStateSuccess(data: final response):
                              final dataReservation = response.reservation;

                              context.goNamed(
                                RouteNames.payment,
                                extra: {'id': dataReservation?.id, 'totalPrice': dataReservation?.totalPrice},
                              );

                              DialogHelper.showSnackBar(
                                context: context,
                                text:
                                    'Reservasi berhasil: ${dataReservation?.reservationCode}',
                              );
                              break;

                            case DataStateFailed(message: final message):
                              DialogHelper.showSnackBar(
                                context: context,
                                text: message,
                              );
                              break;

                            default:
                              break;
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryGreen,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'Ajukan Reservasi',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    };
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentRow(String title, String value, {bool isTotal = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: isTotal ? FontWeight.w900 : FontWeight.w500,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontWeight: isTotal ? FontWeight.w900 : FontWeight.w500,
            color: isTotal ? primaryGreen : Colors.black,
          ),
        ),
      ],
    );
  }
}
