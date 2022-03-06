import 'package:projet_transverse_equipe_7/model/prescription-vf.dart';

void PharmacieMod(Prescript? a,int NewNumber) {
    if (a!.id?.isEmpty ?? true) {
        //Message si id est egale à 0
    }
    a.renouvlemment=NewNumber;
}