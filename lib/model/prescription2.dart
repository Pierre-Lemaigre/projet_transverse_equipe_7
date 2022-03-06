
class Prescription2 {
  int id;
  String title;
  String doc_name;
  String scan_date;
  String validity_date;

  Prescription2(this.id, this.title, this.doc_name, this.scan_date,
      this.validity_date);

  Prescription2.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        doc_name = json['doc_name'],
        scan_date = json['scan_date'],
        validity_date = json['validity_date'];

  Map<String, dynamic> toJson() =>
      {
        'id': id,
        'title': title,
        'doc_name': doc_name,
        'scan_date' : scan_date,
        'validity_date' : validity_date
      };

}