
import 'package:projet_transverse_equipe_7/model/medicament.dart';
import 'package:projet_transverse_equipe_7/model/patient.dart';

class Prescript {

  String id;
  String pr_name;
  String denominat;
  String details;
  int renouvlemment;
  int duree;
  int jours;
  String moment;

  Prescript(this.id, this.pr_name, this.denominat, this.details, this.renouvlemment, this.duree, this.jours, this.moment);

}
class Fiche{
  Patient Pat;
  Medicament Med;

  Fiche(this.Pat, this.Med);
}