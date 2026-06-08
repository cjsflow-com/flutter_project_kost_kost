import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:rimbun_cicio_kost/app/data/model/reservation/index_reservation.dart';
import 'package:rimbun_cicio_kost/core/constant/route_names.dart';
import 'package:rimbun_cicio_kost/core/helper/number_helper.dart';
import 'package:rimbun_cicio_kost/core/presenter/component/widgets/rgb_progress_indicator.dart';
import 'package:rimbun_cicio_kost/core/presenter/reservation/reservation_provider.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

class ReservationPage extends StatefulWidget {
  const ReservationPage({super.key});

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  late ReservationProvider _reservationProvider;
  late AnimationController loaderController;
  late Animation<double> loaderAnimation;

  @override
  void initState() {
    super.initState();
    _reservationProvider = context.read<ReservationProvider>();
    Future.microtask(
      () =>
          Provider.of<ReservationProvider>(
            context,
            listen: false,
          ).indexReservation(),
    );
  }

  // Contoh data dummy

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Daftar Reservasi")),
      body: Consumer<ReservationProvider>(
        builder: (context, provider, _) {
          return switch (provider.reservationIndexState) {
            DataStateInitial() ||
            DataStateLoading() => Center(child: RGBProgressIndicator()),
            DataStateFailed(:final message) => Center(child: Text(message)),
            DataStateSuccess(:final data) => _onSuccess(data),
          };
        },
      ),
    );
  }

  Widget _onSuccess(IndexReservationResponse reservation) {
    return RefreshIndicator(
      onRefresh: () => _reservationProvider.indexReservation(),
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: reservation.data?.length,
        itemBuilder: (context, index) {
          final item = reservation.data?[index];
          final convertTotalPrice = double.parse(item!.totalPrice);
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ID Reservasi
                  Text(
                    'Kode Reservasi: ${item.reservationCode}',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),

                  // Total Pembayaran
                  Text(
                    'Total Pembayaran: ${NumberHelper.formatIdrFromDouble(convertTotalPrice)}',
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 4),

                  // Tanggal masuk dan durasi
                  Text(
                    'Tanggal Masuk: ${item.startDate}',
                    style: const TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'Durasi: ${item.durationMonth} bulan',
                    style: const TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 12),

                  // Tombol Batal & Bayar
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            final convertToDouble = double.parse(
                              item.totalPrice,
                            );
                            final dataToSend = {
                              'id': item.id,
                              'totalPrice': convertToDouble,
                            };
                            context.goNamed(
                              RouteNames.payment_detail,
                              extra: dataToSend,
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.red,
                            side: const BorderSide(color: Colors.red),
                          ),
                          child: const Text('Batal'),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            // aksi bayar
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                          ),
                          child: const Text('Bayar'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
