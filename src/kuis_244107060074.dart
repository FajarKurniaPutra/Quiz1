void main() {
  // Deklarasi dan inisialisasi nama dan nim dengan string
  String nama = "Fajar Kurnia Putra"; 
  String nim = "244107060074"; 

  // Deklarasi dan inisialisasi nilaiUnikNIM dengan mengambil 3 digit terakhir NIM sebagai double 
  double nilaiUnikNIM = 074; 

  // Deklarasi List dengan 5 nilai harga barang
  List<double> hargaBarang = [
    25000.0,
    45000.0,
    15500.0,
    30000.0,
    75000.0
  ];

  // Menambahkan nilaiUnikNIM ke dalam list memakai add
  hargaBarang.add(nilaiUnikNIM);

  // Menghitung Total Belanja menggunakan fungsi hitungTotal
  double totalAwal = hitungTotal(hargaBarang);
  // Deklarasi variabel diskonPersen
  double diskonPersen = 0;  

  // Null Safety memakai variubel null-safe access
  String? pesanDiskon; 

  // Kontrol percabangan if, else if, dan else
  // Jika total lebih dari 200000, maka diskon 10%
  if (totalAwal > 200000) {
    diskonPersen = 0.10;
    pesanDiskon = "Selamat! Anda mendapatkan diskon 10%.";
  // Jika total lebih dari 100000, maka diskon 5%
  } else if (totalAwal >= 100000) {
    diskonPersen = 0.05;
    pesanDiskon = "Selamat! Anda mendapatkan diskon 5%.";
  // Jika total kurang dari 100000, maka tidak mendapatkan diskon
  } else {
    diskonPersen = 0;
    pesanDiskon = "Maaf, Anda tidak mendapatkan diskon.";
  }

  // Perhitungan Akhir untuk menghitung total akhir
  double besarDiskon = totalAwal * diskonPersen;
  double totalAkhir = totalAwal - besarDiskon;

  // Print output
  print("=== Laporan Transaksi Belanja ===");
  print("Nama         : $nama");
  print("NIM          : $nim");
  // Menggunakan operator ! karena sudah pasti terisi
  print("Keterangan   : ${pesanDiskon!}"); 
  print("-----------------------------------------");
  // Print nilai dari desima ke string dengan tambahan 2 angka di belakang koma
  print("Total Awal   : Rp ${totalAwal.toStringAsFixed(2)}");
  print("Besar Diskon : Rp ${besarDiskon.toStringAsFixed(2)}");
  print("Total Akhir  : Rp ${totalAkhir.toStringAsFixed(2)}");
}

// Fungsi hitungTotal dengan perulangan for-in
double hitungTotal(List<double> list) {
  // Inisialisasi variabel total sebagai wadah penampung total
  double total = 0;
  // Iterasi berdasarkan tiap nilai pada list
  for (var harga in list) {
    // Mengakumulasi harga pada variabel total
    total += harga;
  }
  // Mengembalikan nilai total
  return total;
}