import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';

class Members extends StatelessWidget {
  final String imageUrl;
  final String name;

  const Members(
      {super.key,
        required this.imageUrl,
        required this.name}
      );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color:  k2PrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(8),
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(
                    imageUrl,
                  ),
                ),
                //const SizedBox(width: 10,),
                SizedBox(
                  height : MediaQuery.of(context).size.height/25,
                  width : MediaQuery.of(context).size.width/2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          color: kPrimaryColor,
                          fontSize: 20,
                          fontFamily: 'Marcellus',
                          decoration: TextDecoration.underline,
                          decorationThickness: 1.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
