import 'package:flutter/material.dart';
import 'package:projet_transverse_equipe_7/model/prescription.dart';

import 'favorite_card.dart';

class FavoriteCarousel extends StatelessWidget {
  Prescription prescription = new Prescription(
    1,
    'Consultation Allergologie',
    'Dr Jean Philippe',
    '15/09/2021',
    '15/12/2021'
  );

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Favoris',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold
                  ),
                ),
                GestureDetector(
                  onTap: () => print('see all'),
                  child: Text(
                    'Voir tout',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
              height: 170,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return FavoriteCard(
                    prescription: prescription,
                    cardColor: Colors.green[50],
                    icon: Icons.favorite,
                    secondIcon: Icons.delete,
                    secondIconColor: Colors.red,
                  );
                },
              )
          ),
        ]
    );
  }
}
