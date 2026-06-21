import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:rimbun_cicio_kost/app/data/model/reservation/cancel_status_response.dart';
import 'package:rimbun_cicio_kost/app/data/model/reservation/index_reservation.dart';
import 'package:rimbun_cicio_kost/core/constant/route_names.dart';
import 'package:rimbun_cicio_kost/core/helper/dialog_helper.dart';
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
    final data = reservation.data ?? [];

    return RefreshIndicator(
      onRefresh: () => _reservationProvider.indexReservation(),
      child:
          data.isEmpty
              ? ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(16),
                children: const [
                  SizedBox(height: 250),
                  Center(
                    child: Text(
                      'Belum ada data reservasi sama sekali',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              )
              : ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final item = data[index];

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
                          Text(
                            'Kode Reservasi: ${item.reservationCode}',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const SizedBox(height: 4),

                          Text(
                            'Total Pembayaran: ${NumberHelper.formatIdr(item.totalPrice)}',
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),

                          const SizedBox(height: 4),

                          Text(
                            'Tanggal Masuk: ${item.startDate}',
                            style: const TextStyle(color: Colors.grey),
                          ),

                          Text(
                            'Durasi: ${item.durationMonth} bulan',
                            style: const TextStyle(color: Colors.grey),
                          ),

                          const SizedBox(height: 12),

                          if (item.paymentDueAt != null) ...[
                            Text(
                              'Lakukan Pembayaran Sebelum: ${NumberHelper.convertTimeStamp(item.paymentDueAt!)}',
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.red,
                              ),
                            ),
                            const SizedBox(height: 8),
                          ],

                          Row(
                            children: [
                              if(item.status == 'pending' || item.status == 'waiting_payment') ...[
                                Consumer<ReservationProvider>(
                                  builder: (context, provider, child) {
                                    final cancelState =
                                        provider.statusCancelResponse;

                                    return buildCancelButton(
                                      context: context,
                                      cancelState: cancelState,
                                      reservationId: item.id,
                                    );
                                  },
                                ),
                              ],
                              const SizedBox(width: 12),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    final dataToSend = {
                                      'id': item.id,
                                      'totalPrice': item.totalPrice,
                                    };

                                    if (item.payment != null){
                                      context.pushNamed(
                                        RouteNames.payment_detail,extra: item.id,
                                      );
                                    }else{
                                      context.goNamed(RouteNames.payment, extra: dataToSend);
                                    }

                                    // if (item.status == 'waiting_payment') {
                                    //   context.pushNamed(
                                    //     RouteNames.payment_detail,
                                    //     extra: item.id,
                                    //   );
                                    // } else {
                                    //   context.goNamed(
                                    //     RouteNames.payment,
                                    //     extra: dataToSend,
                                    //   );
                                    // }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                  ),
                                  child: Text(
                                    item.payment != null
                                        ? 'Detail Pembayaran'
                                        : 'Bayar',
                                  ),
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

  Widget buildCancelButton({
    required BuildContext context,
    required DataState<CancelStatusResponse> cancelState,
    required int reservationId,
  }) {
    return Expanded(
      child: OutlinedButton(
        onPressed: switch (cancelState) {
          DataStateLoading() => null,
          _ => () async {
            final confirm = await showDialog<bool>(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Batalkan Reservasi?'),
                  content: const Text(
                    'Apakah kamu yakin ingin membatalkan reservasi ini?',
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context, false),
                      child: const Text('Tidak'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, true),
                      child: const Text(
                        'Ya, Batalkan',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                );
              },
            );

            if (confirm != true) return;

            await context.read<ReservationProvider>().cancelReservation(
              reservationId,
            );

            if (!context.mounted) return;

            final result =
                context.read<ReservationProvider>().statusCancelResponse;

            switch (result) {
              case DataStateSuccess(:final data):
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(data.message),
                    backgroundColor: Colors.green,
                  ),
                );
                break;

              case DataStateFailed(:final message):
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(message), backgroundColor: Colors.red),
                );
                break;

              default:
                break;
            }
          },
        },
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.red,
          side: const BorderSide(color: Colors.red),
        ),
        child: switch (cancelState) {
          DataStateLoading() => const SizedBox(
            width: 18,
            height: 18,
            child: CircularProgressIndicator(strokeWidth: 2, color: Colors.red),
          ),
          _ => const Text('Batal'),
        },
      ),
    );
  }
}
