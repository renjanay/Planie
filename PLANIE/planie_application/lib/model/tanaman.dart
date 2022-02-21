class Tanaman {
  String id_tanaman = "";
  String nama_tanaman = "";
  String keterangan = "";

  Tanaman(this.id_tanaman, this.nama_tanaman, this.keterangan);

  Tanaman.fromJson(Map<String, dynamic> json) {
    id_tanaman = json['id_tanaman'];
    nama_tanaman = json['nama_tanaman'];
    keterangan = json['keterangan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_tanaman'] = this.id_tanaman;
    data['nama_tanaman'] = this.nama_tanaman;
    data['keterangan'] = this.keterangan;
    return data;
  }
}
