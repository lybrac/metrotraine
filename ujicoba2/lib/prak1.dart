// 3. Buat Function hitungTotal (di luar main())
int hitungTotal(List<int> daftarHarga) {
  int total = 0;
  for (int harga in daftarHarga) {
    total += harga;
  }
  return total;
}

// 4. Buat Function hitungPajak (di luar main()) menggunakan arrow function
double hitungPajak(double total) => total * 10 / 100;

void main() {
  // 1. Deklarasi Data Toko & Pelanggan (di dalam main())
  const namaToko = 'Toko Metro';
  final namaPelanggan = 'Budi';
  bool isMember = true;
  String? kodeVoucher; // dibiarkan null

  // 2. Deklarasi Daftar Barang (di dalam main())
  List<String> namaBarang = ['Pensil', 'Buku', 'Tas'];
  List<int> hargaBarang = [5000, 15000, 120000]; 

  // 5. Hitung Total Belanja (di dalam main())
  int total = hitungTotal(hargaBarang);

  // 6. Tentukan Diskon dengan if (di dalam main())
  double diskon = 0;
  if (isMember == true && total >= 100000) {
    diskon = total * 10 / 100;
  }

  // 7. Hitung Pajak, Bayar, dan Kembalian (di dalam main())
  double pajak = hitungPajak(total - diskon);
  double bayar = total - diskon + pajak;
  double uangBayar = 200000;
  double kembalian = uangBayar - bayar;

  // 8. Tentukan Level Pelanggan dengan switch (di dalam main())
  String level;
  switch (total) {
    case >= 200000:
      level = 'Gold';
      break;
    case >= 100000:
      level = 'Silver';
      break;
    default:
      level = 'Reguler';
  }

  // 9. Cetak Struk (di dalam main())
  print('=== $namaToko ===');
  print('Pelanggan : $namaPelanggan');
  
  // Mencetak setiap barang menggunakan perulangan for
  for (int i = 0; i < namaBarang.length; i++) {
    print('${i + 1}. ${namaBarang[i]}  Rp ${hargaBarang[i]}'); 
  }
  
  // Mencetak ringkasan pembayaran
  print('Total : Rp $total');
  print('Diskon : Rp $diskon');
  print('Pajak : Rp $pajak');
  print('Bayar : Rp $bayar');
  
  // Mencetak Voucher menggunakan operator ??
  print('Voucher : ${kodeVoucher ?? 'Tidak ada voucher'}');
  
  // Mencetak Level dan Kembalian
  print('Level : $level');
  print('Kembalian : Rp $kembalian');
}