import 'package:flutter/material.dart';

class PaymentStatusPageFull extends StatefulWidget {
  const PaymentStatusPageFull({super.key});

  @override
  State<PaymentStatusPageFull> createState() => _PaymentStatusPageFullState();
}

class _PaymentStatusPageFullState extends State<PaymentStatusPageFull> {
  static const Color primaryGreen = Color(0xFF0F5B2B);
  static const Color backgroundColor = Color(0xFFF4FAF4);
  static const Color cardBackground = Color(0xFFFFFEF7);

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
                    'Status & Pembayaran',
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
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?w=400',
                              width: 80,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Kode Reservasi: RK2505158',
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)),
                                const SizedBox(height: 2),
                                const Text(
                                  'Kamar A01',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900),
                                ),
                                const SizedBox(height: 2),
                                const Text(
                                  'Tanggal Masuk: 15 Jun 2025 | Durasi: 6 Bulan',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 4),
                            decoration: BoxDecoration(
                                color: Colors.orange.shade100,
                                borderRadius: BorderRadius.circular(999)),
                            child: const Text(
                              'Disetujui',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.orange),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Status Reservasi
                    const Text('Status Reservasi',
                        style: TextStyle(fontWeight: FontWeight.w700)),
                    const SizedBox(height: 8),
                    Column(
                      children: [
                        _buildStatusRow(
                          icon: Icons.circle,
                          iconColor: Colors.orange,
                          title: 'Pending',
                          currentStatus: 'Menunggu Pembayaran',
                          subtitle:
                          'Reservasi telah dibuat, menunggu konfirmasi. Silakan lakukan pembayaran sebelum 18 Mei 2025.',
                        ),
                        _buildStatusRow(
                          currentStatus: 'Menunggu Pembayaran',
                          icon: Icons.file_copy,
                          iconColor: Colors.blue,
                          title: 'Menunggu Pembayaran',
                          subtitle: 'Upload bukti pembayaran oleh Anda.',
                        ),
                        _buildStatusRow(
                          currentStatus: 'Menunggu Pembayaran',
                          icon: Icons.check_circle,
                          iconColor: Colors.green,
                          title: 'Disetujui',
                          subtitle: 'Reservasi disetujui, kamar siap ditempati.',
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // Transfer Bank
                    const Text('Transfer Bank ke:',
                        style: TextStyle(fontWeight: FontWeight.w700)),
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
                        children: const [
                          Text('Bank BCA', style: TextStyle(fontWeight: FontWeight.w600)),
                          SizedBox(height: 4),
                          Text('1234 5678 9012'),
                          SizedBox(height: 2),
                          Text('a.n. Rimbun Kos'),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Upload Bukti Pembayaran
                    const Text('Upload Bukti Pembayaran',
                        style: TextStyle(fontWeight: FontWeight.w700)),
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
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
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
                ),
              ),
            ),

            // Tombol Kirim Pembayaran
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: isTablet ? 48 : 16, vertical: 12),
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

  Widget _buildStatusRow({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String subtitle,
    required String currentStatus, // status saat ini
  }) {
    final isActive = title == currentStatus;

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
                  Text(title,
                      style: const TextStyle(
                          fontSize: 13, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 2),
                  Text(subtitle,
                      style: const TextStyle(fontSize: 12, color: Colors.black87)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}