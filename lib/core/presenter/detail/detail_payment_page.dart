import 'package:flutter/material.dart';
import 'package:rimbun_cicio_kost/core/constant/route_names.dart';
import 'package:rimbun_cicio_kost/core/helper/dialog_helper.dart';
import 'package:provider/provider.dart';
import 'package:rimbun_cicio_kost/app/data/model/reservation/detail_reservation.dart';
import 'package:rimbun_cicio_kost/core/helper/number_helper.dart';
import 'package:rimbun_cicio_kost/core/presenter/reservation/reservation_provider.dart';

import '../../state/data_state.dart';

class PaymentStatusPageFull extends StatefulWidget {
  final int reservationId;

  const PaymentStatusPageFull({super.key, required this.reservationId});

  @override
  State<PaymentStatusPageFull> createState() => _PaymentStatusPageFullState();
}

class _PaymentStatusPageFullState extends State<PaymentStatusPageFull> {
  static const Color primaryGreen = Color(0xFF0F5B2B);
  static const Color backgroundColor = Color(0xFFF4FAF4);
  static const Color cardBackground = Color(0xFFFFFEF7);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ReservationProvider>().detailReservation(
        widget.reservationId,
      );
    });
  }

  String? uploadedFile;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final isTablet = size.width >= 600;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            // HEADER
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: isTablet ? 48 : 16,
                vertical: 12,
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () => DialogHelper.goNamed(context: context, nameRoutes: RouteNames.home_page),
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
                    'Detail Pemesanan',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Consumer<ReservationProvider>(
                builder: (context, provider, child) {
                  final state = provider.detailResponseState;
                  return switch (state) {
                    DataStateLoading() => const Center(
                      child: CircularProgressIndicator(),
                    ),

                    DataStateFailed(:final message) => Center(
                      child: Text(message),
                    ),

                    DataStateSuccess(:final data) => _onSuccess(data),

                    _ => const SizedBox.shrink(),
                  };
                },
              ),
            ),

            // Tombol Kirim Pembayaran
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: isTablet ? 48 : 16,
                vertical: 12,
              ),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: submit payment
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryGreen,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Kirim Pembayaran',
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

  Widget _onSuccess(ReservationDetailResponse detailResponse) {
    final reservation = detailResponse.data;

    if (reservation == null) {
      return const Center(child: Text('Data reservasi tidak ditemukan'));
    }

    final room = reservation.room;
    final paymentMethod = reservation.payment?.paymentMethod;
    final histories = reservation.statusHistories;

    final size = MediaQuery.sizeOf(context);
    final isTablet = size.width >= 600;

    final showUploadPaymentProof =
        paymentMethod?.type == 'bank_transfer' ||
        paymentMethod?.type == 'e_wallet';

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: isTablet ? 48 : 16,
        vertical: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Card Reservasi
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: cardBackground,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ClipRRect(
                //   borderRadius: BorderRadius.circular(8),
                //   child: Image.network(
                //     'https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?w=400',
                //     width: 80,
                //     height: 60,
                //     fit: BoxFit.cover,
                //   ),
                // ),
                // const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kode Reservasi: ${reservation.reservationCode}',
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'Total Pembayaran : ${NumberHelper.formatIdr(reservation.totalPrice)}',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        room?.title ?? '-',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'Tanggal Masuk: ${reservation.startDate} | Durasi: ${reservation.durationMonth} Bulan',
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.orange.shade100,
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: Text(
                    reservation.statusLabel,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: _getStatusColor(reservation.statusLabel),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Status Reservasi
          const Text(
            'Status Reservasi',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 8),

          if (histories.isEmpty)
            const Text(
              'Belum ada riwayat status',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            )
          else
            Column(
              children:
                  histories.map((history) {
                    return _buildStatusRow(
                      icon: _getStatusIcon(history.title),
                      iconColor: _getStatusColor(history.title),
                      title: history.title,
                      subtitle: history.description,
                      currentStatus: reservation.statusLabel,
                    );
                  }).toList(),
            ),

          const SizedBox(height: 16),

          // Transfer Bank
          const Text(
            'Transfer Bank ke:',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 8),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  paymentMethod?.name ?? '-',
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                Text(paymentMethod?.accountNumber ?? '-'),
                const SizedBox(height: 2),
                Text('a.n. ${paymentMethod?.accountName ?? '-'}'),
              ],
            ),
          ),

          if (showUploadPaymentProof) ...[
            const SizedBox(height: 16),

            // Upload Bukti Pembayaran
            const Text(
              'Upload Bukti Pembayaran',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),

            GestureDetector(
              onTap: () {
                // TODO: upload file
              },
              child: Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.upload_file, size: 36, color: Colors.grey),
                      SizedBox(height: 4),
                      Text(
                        'Klik untuk upload bukti pembayaran\nPNG, JPG, PDF maks 2MB',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildStatusRow({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String subtitle,
    required String currentStatus,
  }) {
    final isActive = currentStatus == title;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        decoration: BoxDecoration(
          border: isActive ? Border.all(color: Colors.green, width: 2) : null,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 20, color: iconColor),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: const TextStyle(fontSize: 12, color: Colors.black87),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  IconData _getStatusIcon(String status) {
    return switch (status) {
      'Menunggu Konfirmasi' => Icons.circle,
      'Menunggu Pembayaran' => Icons.file_copy,
      'Bukti Pembayaran Telah Diupload' => Icons.receipt_long,
      'Disetujui' => Icons.check_circle,
      'Ditolak' => Icons.cancel,
      'Dibatalkan' => Icons.block,
      'Kadaluarsa' => Icons.timer_off,
      _ => Icons.info,
    };
  }

  Color _getStatusColor(String status) {
    return switch (status) {
      'Menunggu Konfirmasi' => Colors.orange,
      'Menunggu Pembayaran' => Colors.blue,
      'Bukti Pembayaran Telah Diupload' => Colors.orangeAccent,
      'Disetujui' => Colors.green,
      'Ditolak' => Colors.red,
      'Dibatalkan' => Colors.grey,
      'Kadaluarsa' => Colors.redAccent,
      _ => Colors.black54,
    };
  }
}
