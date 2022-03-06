import 'package:flutter/material.dart';
import 'package:projet_transverse_equipe_7/model/prescription.dart';
import 'package:projet_transverse_equipe_7/model/prescription-vf.dart';
class Favorite extends StatelessWidget {
  final Fiche fiche;
  final IconData icon;
  final IconData secondIcon;
  final Color? cardColor;
  final Color? secondIconColor;


  Favorite(
      {
        required this.fiche,
        required this.cardColor,
        required this.icon,
        required this.secondIcon,
        required this.secondIconColor
      });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(20, 10, 20, 5),
        padding: EdgeInsets.all(15),
        width: 300,
        decoration: BoxDecoration(
            color: this.cardColor,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: Text(this.fiche.Pat.nom, style: TextStyle(fontSize: 17))
                ),
                if (this.icon != Icons.error)
                  IconButton(
                      onPressed: () => print('you unlike something !'),
                      icon: Icon(this.icon),
                      color: Colors.pinkAccent,
                      padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                      constraints: BoxConstraints()
                  ),
                IconButton(
                    onPressed: () => print('Delete !'),
                    icon: Icon(this.secondIcon),
                    color: this.secondIconColor,
                    padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                    constraints: BoxConstraints()
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Image.asset(
                      'assets/images/home_page/qr_code.png',
                      width: 90,
                      height: 90,
                      fit: BoxFit.contain
                  ),
                ),
                Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                            this.fiche.Pat.numSS,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            )
                        ),
                        SizedBox(height: 5),
                        Text(
                            'Medicament ' + this.fiche.Med.denomination,
                            style: TextStyle(
                                fontSize: 15
                            )
                        ),
                        SizedBox(height: 8),
                        Text(
                            'Valide jusqu\'au:',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            )
                        ),
                        SizedBox(height: 3),
                        Text(
                            'Detail:' + this.fiche.Med.detail,
                            style: TextStyle(
                                fontSize: 15
                            )
                        ),
                      ]
                  ),
                )
              ],
            ),
          ],
        )
    );
  }
}
